select ѧԺ����, avg(�ɼ�) as ƽ����
from ѧ��
inner join ѧԺ on ѧ��.ѧԺ���� = ѧԺ.ѧԺ����
inner join ѧϰ on ѧ��.ѧ��  = ѧϰ.ѧ��
inner join �γ� on ѧϰ.�γ̺� = �γ�.�γ̺�
where �γ��� = '����ѧ'
group by ѧԺ����
order by avg(�ɼ�) desc;