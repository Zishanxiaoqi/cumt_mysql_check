select distinct ѧ��.ѧ�� , ����
from ѧ�� 
where not exists(
    select *
    from ѧϰ
    inner join �γ� on �γ�.�γ̺� = ѧϰ.�γ̺�
    where ѧϰ.ѧ�� = ѧ��.ѧ�� and �γ�.�γ��� = '�������'
)
