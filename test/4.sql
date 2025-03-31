select 学号
from 学习
group by 学号
having count(学号) >= 2