with tb1 as(
    select ����,�γ̺�,�ɼ�
    from ѧ��
    inner join ѧϰ on ѧϰ.ѧ�� = ѧ��.ѧ��
),
tb2 as(
    select �γ�.�γ̺�,��ʦ��,�γ���
    from �γ�
    inner join �ڿ� on �γ�.�γ̺� = �ڿ�.�γ̺�
),
tb3 as(
    select �γ̺�,��ʦ.��ʦ��,�γ���
    from ��ʦ
    inner join tb2 on ��ʦ.��ʦ�� = tb2.��ʦ��
    where ��ʦ�� = '����'
)
select ����,�γ���,�ɼ�
from tb1
inner join tb3 on tb1.�γ̺� = tb3.�γ̺�
where �ɼ�>90;
