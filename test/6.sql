select distinct ѧ��
from ѧϰ a
where not exists(
    select 1
    from (
        select distinct �γ̺�
        from ѧϰ
        where ѧϰ.ѧ�� = 'T06'
    )as c
    where not exists(
        select 1
        from ѧϰ as b
        where b.�γ̺� = c.�γ̺� and b.ѧ�� = a.ѧ��
    )
);