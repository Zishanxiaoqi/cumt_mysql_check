select 课程号,课程名
from 课程 as b
where not exists(
    select *
    from 学生 
    inner join 学习 on  学生.学号 = 学习.学号
    inner join 课程 on 课程.课程号 = 学习.课程号
    where 姓名 = '王石' and 课程名 = b.课程名
)