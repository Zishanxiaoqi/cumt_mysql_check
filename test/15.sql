select �γ�.�γ̺�,�γ��� 
FROM ѧϰ
inner join �γ� on ѧϰ.�γ̺� = �γ�.�γ̺�
group by �γ̺�
having count(ѧ��) > 5;