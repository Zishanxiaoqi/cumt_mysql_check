select distinct ���� , ѧԺ����
from ѧ�� 
inner join ѧԺ on ѧ��.ѧԺ���� = ѧԺ.ѧԺ����
where not exists(
    select * 
    from �γ�
    inner join �ڿ� on �ڿ�.�γ̺� = �γ�.�γ̺�
    inner join ��ʦ on ��ʦ.��ʦ�� = �ڿ�.��ʦ��
    where not exists(
        select *
        from ѧϰ
        where ѧϰ.ѧ�� = ѧ��.ѧ�� and �γ�.�γ̺� = ѧϰ.�γ̺� 
    ) and ��ʦ.��ʦ�� = '����'
);
