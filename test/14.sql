SELECT 学生.姓名
FROM 学生
INNER JOIN 学习 ON 学生.学号 = 学习.学号
INNER JOIN 课程 ON 学习.课程号 = 课程.课程号
WHERE 课程.课程名 = '经济学'
ORDER BY 学习.成绩 DESC
LIMIT 1;