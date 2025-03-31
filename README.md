首先运行set.bat,配置环境
将你的sql文件以f"{format}{n}.sql"的形式放入test文件夹(新建在和main.py同一目录)如（1.sql 2.sql 3.sql..）
注意，一个sql文件只能执行一个查询，所以不要把每道题全部写在一个sql中，请分开写
然后会自动与answer中的答案进行比较，并输出(注意，忽略了排序！！！！并且会检测列名是否相同)
在开头输入password和local_port即可
mode用来定义是否保存查询结果
注意编码问题
