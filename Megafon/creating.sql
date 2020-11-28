create table table6 (
    subs_id number, 
    number_history number, 
    start_date date, 
    end_date date, 
    rtpl_id number
);

insert into table6
select 100, 1, to_date('01.02.2017', 'dd.mm.yyyy'), to_date('03.02.2017', 'dd.mm.yyyy'), 301  from dual union all
select 100, 2, to_date('03.02.2017', 'dd.mm.yyyy'), to_date('01.03.2017', 'dd.mm.yyyy'), 302  from dual union all
select 100, 3, to_date('28.02.2017', 'dd.mm.yyyy'), to_date('31.12.2999', 'dd.mm.yyyy'), 301  from dual union all
select 101, 1, to_date('01.01.2016', 'dd.mm.yyyy'), to_date('01.01.2017', 'dd.mm.yyyy'), 401  from dual union all
select 101, 2, to_date('01.01.2017', 'dd.mm.yyyy'), to_date('31.12.2999', 'dd.mm.yyyy'), 301  from dual union all
select 102, 1, to_date('01.01.2017', 'dd.mm.yyyy'), to_date('01.02.2017', 'dd.mm.yyyy'), 401  from dual union all
select 102, 2, to_date('02.02.2017', 'dd.mm.yyyy'), to_date('04.02.2017', 'dd.mm.yyyy'), 302  from dual union all
select 102, 3, to_date('04.02.2017', 'dd.mm.yyyy'), to_date('01.02.2017', 'dd.mm.yyyy'), 401  from dual union all
select 102, 4, to_date('05.02.2017', 'dd.mm.yyyy'), to_date('31.12.2999', 'dd.mm.yyyy'), 405  from dual;

commit;

create table table3 (
   month_id	number, -- ����� (��������, 201501 - ������ 2015 �)
   type_id	number, -- ������� �������� (2 ��������: 1 - ������ �������, 2 - ����� �������)
   cnt		number  -- ���-�� ���������
 );

insert into table3
select 201501, 1, 1  from dual union all
select 201501, 1, 1  from dual union all
select 201501, 1, 1  from dual union all
select 201501, 2, 2  from dual union all
select 201501, 2, 3  from dual union all
select 201502, 1, 3  from dual union all
select 201502, 1, 3  from dual union all
select 201503, 1, 3  from dual union all
select 201503, 2, 4  from dual union all
select 201503, 1, 4  from dual union all
select 201503, 2, 5  from dual union all
select 201513, 1, 5  from dual;

commit;


create table table2 
(
    account number, -- ������� ���� ��������. 
    subs_id	number, -- ���������� ������������� ��������. 
    rtpl_id	number  -- �����.
);

insert into table2
select 10001, 101, 300  from dual union all
select 10001, 102, 300  from dual union all
select 10002, 201, 405  from dual union all
select 10001, 103, 300  from dual union all
select 10002, 202, 300  from dual union all
select 10003, 301, 206  from dual union all
select 10003, 302, 405  from dual union all
select 10001, 104, 300  from dual;

commit;


create table table1 
(
    FIO varchar2(100)  -- ������������ �������.
);

insert into table1
select '������ ���� ��������'  from dual union all
select '������ ����� ��������'  from dual union all
select '����������� ��������� �������������'  from dual;

commit;


create table calls
(
    clnt_clnt_id number, -- ������� ���� �� ������� ��������.
    call_date date,      -- ���� ���������� ������.
    money number,        -- ��������� ������.
    minuts number        -- �������������� �����.
);

insert into calls
select 1, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 31 from dual union all
select 2, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 15 from dual union all
select 2, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 16 from dual union all
select 3, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 11 from dual union all
select 3, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 11 from dual union all
select 3, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 11 from dual union all
select 4, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 5 from dual union all
select 4, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 5 from dual union all
select 5, to_date('10.05.2006', 'dd.mm.yyyy'), 10, 30 from dual union all
select 1, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 31 from dual union all
select 2, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 15 from dual union all
select 2, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 16 from dual union all
select 3, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 11 from dual union all
select 3, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 11 from dual union all
select 3, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 11 from dual union all
select 4, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 5 from dual union all
select 4, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 5 from dual union all
select 5, to_date('11.05.2006', 'dd.mm.yyyy'), 10, 30 from dual;

commit;


create table clients
(
    clnt_id number,      -- ������������� �������.
    brnc_brnc_id number, -- ������� ���� �� ������� ��������.
    name varchar2(100),   -- ��� �������.
    adress varchar2(100)  -- ����� �������.
);

insert into clients
select 1, 1, '�������', '��.�������, �.�����������' from dual union all
select 2, 1, '�������', '��.�������, �.�����������' from dual union all
select 3, 2, '������', '��.�������, �.�����������' from dual union all
select 4, 2, '�������', '��.�������, �.�����������' from dual union all
select 5, 2, '�������', '��.�������, �.�����������' from dual union all
select 6, 3, '������', '��.�������, �.�����������' from dual union all
select 7, 4, '�������', '��.�������, �.�����������' from dual union all
select 8, 5, '������', '��.�������, �.�����������' from dual union all
select 9, 5, '������', '��.�������, �.�����������' from dual;

commit;


create table branches
(
    brnc_id number,    -- ������������� �������.
    name varchar2(100)  -- ������������ �������.
);

insert into branches
select 1, '������' from dual union all
select 2, '��������' from dual union all
select 3, '�������' from dual union all
select 4, '�����' from dual union all
select 5, '��������' from dual union all
select 6, '���������' from dual union all
select 7, '���������-��������' from dual union all
select 8, '��������' from dual;

commit;