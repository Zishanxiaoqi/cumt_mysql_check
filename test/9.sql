select 课程号
from 课程
where not exists(
    select * 
    from 学习
    where 学习.课程号 = 课程.课程号
);