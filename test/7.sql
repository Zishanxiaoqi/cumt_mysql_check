select distinct a.����,ѧԺ����
from (
    select ����,ѧԺ.ѧԺ����,�γ̺�,ѧ��.ѧ��,ѧԺ����
    from ѧ��
    inner join ѧϰ on ѧ��.ѧ�� = ѧϰ.ѧ�� 
    inner join ѧԺ on ѧԺ.ѧԺ���� = ѧ��.ѧԺ���� ) as a
where not exists(
    select * 
    from �γ� as c
    where c.�γ̺� in ('c3','c4') and not exists(
        select *
        from ѧϰ as b
        where b.ѧ�� = a.ѧ�� and b.�γ̺� = c.�γ̺�
    )
)