select �γ̺�,�γ���
from �γ� as b
where not exists(
    select *
    from ѧ�� 
    inner join ѧϰ on  ѧ��.ѧ�� = ѧϰ.ѧ��
    inner join �γ� on �γ�.�γ̺� = ѧϰ.�γ̺�
    where ���� = '��ʯ' and �γ��� = b.�γ���
)