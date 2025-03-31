from sqlalchemy import create_engine
import os
import pandas as pd
import chardet
import shutil
import sys

if getattr(sys, 'frozen', False):  # 判断是否是打包后的环境
    BASE_DIR = sys._MEIPASS  # PyInstaller 运行时的临时目录
else:
    BASE_DIR = os.path.dirname(__file__)  # 普通 Python 运行时的目录


src_encoding = 'gbk'
dest_encoding = 'utf-8'
format = ""
answer_path = "answer"
passward = input('请输入mysql密码')
loacal_port = "3306"
mode = int(input('请输入mode(0为save,保存结果,1为drop,不保留结果)')) #0为save,保存结果,1为drop,不保留结果

def check_encoding(path,sample_size):
    with open(path, 'rb') as f:
        raw_data = f.read(sample_size)  # 读取部分数据进行检测
        result = chardet.detect(raw_data)
    return result['encoding']

def convert_encoding(input_file, output_file, src_encoding='gbk', dest_encoding='utf-8'):
    with open(input_file, 'r', encoding=src_encoding) as f_in:
        content = f_in.read()

    with open(output_file, 'w', encoding=dest_encoding) as f_out:
        f_out.write(content)


engine = create_engine(f"mysql+pymysql://root:{passward}@localhost:{loacal_port}/exp?charset=utf8mb4")


def read_mysql(path):
    with open(path, 'r', encoding='utf-8') as f:
        sql = f.read()
        df = pd.read_sql(sql,engine)
    return df

os.makedirs("test_result",exist_ok=True)
os.makedirs("test_convert",exist_ok=True)



# 转换编码
for i in range (1,16):
    path = os.path.join("test",f"{format}{i}.sql")
    if i == 1:
        encoding = check_encoding(path,1024)
    path_save = os.path.join("test_convert",f"{format}{i}.sql")
    convert_encoding(path,path_save,encoding,dest_encoding)

for i in range (1,16):
    path = os.path.join("test_convert",f"{format}{i}.sql")
    resulf_df = read_mysql(path)
    path_answer = os.path.join("answer",f"T{i}.csv")
    answer_df = pd.read_csv(path_answer,encoding=dest_encoding)
    
    df1_sorted = answer_df.sort_values(by=list(answer_df.columns)).reset_index(drop=True)
    df2_sorted = resulf_df.sort_values(by=list(resulf_df.columns)).reset_index(drop=True)
    if df1_sorted.equals(df2_sorted):
        print(f"T{i} pass")
    else:
        print(f"T{i} fail")
    resulf_df = resulf_df.to_csv(f"test_result/T{i}.csv",index=False,encoding=dest_encoding)

if mode:
    shutil.rmtree("test_convert")
    shutil.rmtree("test_result")

input("运行完毕，按任意键退出")