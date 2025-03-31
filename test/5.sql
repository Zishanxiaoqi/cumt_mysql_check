select 姓名,成绩
from 学生
inner join 学习 on 学习.学号 = 学生.学号 inner join 课程
on 课程.课程号 = 学习.课程号
where 课程名 = '经济学' and 成绩 < 60;
