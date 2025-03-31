select 姓名
from 学生
where not exists(
    select *
    from 课程
    where not exists(
        select *
        from 学习
        where 课程号 = 课程.课程号 and 学号 = 学生.学号 
    )
);