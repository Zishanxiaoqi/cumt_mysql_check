select 课程.课程号,课程名,教师名
from 授课
inner join 课程 on 课程.课程号 = 授课.课程号
inner join 教师 on 教师.教师号 = 授课.教师号
where 学时 between 30 and 45;