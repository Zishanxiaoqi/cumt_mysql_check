select distinct 学号
from 学习 a
where not exists(
    select 1
    from (
        select distinct 课程号
        from 学习
        where 学习.学号 = 'T06'
    )as c
    where not exists(
        select 1
        from 学习 as b
        where b.课程号 = c.课程号 and b.学号 = a.学号
    )
);