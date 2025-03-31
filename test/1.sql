with tb1 as(
    select 姓名,课程号,成绩
    from 学生
    inner join 学习 on 学习.学号 = 学生.学号
),
tb2 as(
    select 课程.课程号,教师号,课程名
    from 课程
    inner join 授课 on 课程.课程号 = 授课.课程号
),
tb3 as(
    select 课程号,教师.教师号,课程名
    from 教师
    inner join tb2 on 教师.教师号 = tb2.教师号
    where 教师名 = '王刚'
)
select 姓名,课程名,成绩
from tb1
inner join tb3 on tb1.课程号 = tb3.课程号
where 成绩>90;
