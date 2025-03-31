select 课程.课程号,课程名 
FROM 学习
inner join 课程 on 学习.课程号 = 课程.课程号
group by 课程号
having count(学号) > 5;