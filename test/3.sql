select distinct 学生.学号 , 姓名
from 学生 
where not exists(
    select *
    from 学习
    inner join 课程 on 课程.课程号 = 学习.课程号
    where 学习.学号 = 学生.学号 and 课程.课程名 = '软件工程'
)
