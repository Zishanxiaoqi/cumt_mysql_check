select distinct a.姓名,学院名称
from (
    select 姓名,学院.学院代码,课程号,学生.学号,学院名称
    from 学生
    inner join 学习 on 学生.学号 = 学习.学号 
    inner join 学院 on 学院.学院代码 = 学生.学院代码 ) as a
where not exists(
    select * 
    from 课程 as c
    where c.课程号 in ('c3','c4') and not exists(
        select *
        from 学习 as b
        where b.学号 = a.学号 and b.课程号 = c.课程号
    )
)