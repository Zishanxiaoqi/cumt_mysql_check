select 姓名,学院名称,成绩
from 学生
inner join 学院 on 学生.学院代码 = 学院.学院代码
inner join 学习 on 学生.学号  = 学习.学号
inner join 课程 on 学习.课程号 = 课程.课程号
where 课程名 = '经济学'
order by 学院名称,成绩 asc;