--��ǰ�û�
show user;
--��ǰ�û��µı�
select * from tab;
--������ѯ
  --��ѯ����
select * from catalog;
  --ͨ��������ѯ
select tname,creator,tabletype,remarks
from catalog;
/*
sql�Ż���ԭ��
  1.ʹ����������*
  2...
  
sql�е�nullֵ����
  0.��ֵ����Ч�ģ�δָ���ģ�δ֪�Ļ򲻿�Ԥ֪��ֵ����ֵ���ǿո��0
  1.����ull�ı��ʽ��Ϊnull
  2.null��Զ!=null
  3...
    
    
*/
--nvl(a,b) ���a��ֵλnullʱ����b�����򷵻�a
select nvl(null,'b') from dual
--�ж�null is null,is not null
select * 
from catalog
where remarks is not null
--�����⣬����  
select 
  tname as "����1",creator "����2"
  ,tabletype ����3 
from catalog;
/*����1��2û�����𣬵��������пո��ؼ���ʱҪ��˫����*/

--distinctȥ�ظ�,���ú��������У������������������ظ�
select distinct creator,tabletype from catalog;

/*
���ӷ���
  �������У������ַ�������һ��
  �á�||����ʾ
  �����������ϳɡ���
    �൱��mysql�е�concat,�൱��java�е�+
*/
--concat����
--��oracle�У�дselect����Ҫ��from,from����Ը���������Ǳ��ж��ټ�¼�ͻ��ӡ������
--����oracle�ṩ��һ�ű�dual(α��)
select concat('aa','bb') �ַ���
from dual;
select concat(tname,'aaa')
from catalog;
select 'a'||'b' from dual;
/*
orcle�е��ַ���
  �ַ������Ա�ʾselect�б���һ���ַ������֣����ڣ�
  ���ں��ַ���ֻ���ڵ������г���
  ÿ������һ���ǣ��ַ������ᱻ���һ��
*/
/*
sql��sql*plus
  sql
    һ������
    ANSI��׼
    �ؼ��ֲ�����д
    ʹ�����������ݿ��еı�Ķ�����Ϣ�ͱ��е�����
  sql*plus
    һֱ����
    oracle������֮һ
    �ؼ��ֿ�����д
    ����ܸı����ݿ��е����ݵ�ֵ
    ��������
  isql*plus(ֻ��9��10���У���ҳ��sql*plus,httpЭ�鲻��ȫ)
      ������ṹ
      �༭sql���
      ִ��sql���
      ��sql�������ļ��в���sql���ִ�н���������ļ���
      �ڱ�����ļ���ִ�����
      ���ı��ļ�װ��sql*plus�༭����
      �Ա���Ϊ����http//localhost:5560/isqlplus/
*/

select * from catalog;
desc catalog;