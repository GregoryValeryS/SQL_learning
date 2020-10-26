create table employees
(
    id_emp number,          -- ������������� ����������.
    name_emp varchar2(42),  -- ��� ����������.
    id_dep number,          -- ������������� ������.
    salary number           -- �������� ����������
);

create table bosses
(
    id_dep number,          -- ������������� ������.
    name_dep varchar2(42),  -- �������� ������.
    id_emp number           -- ������������� ���������� - ����������.
);

insert into employees
select 1,   '��� �������-��',       8, 190000 from dual union all
select 2,   '�������� �������',     7, 100000 from dual union all
select 3,   '������ �������',       6, 180000 from dual union all
select 4,   '������ ���������',     5, 170000 from dual union all
select 5,   '���� ���������',       4, 160000 from dual union all
select 6,   '���� ����',            3, 200000 from dual union all
select 7,   '������� ���',          2, 150000 from dual union all
select 8,   '������� ���������',    1, 190000 from dual union all
select 9,   '����� �������',        8, 60000 from dual union all
select 10,  '���� ����',            7, 101000 from dual union all
select 11,  '������ ���������',     6, 171000 from dual union all
select 12,  '����� ���',            5, 160000 from dual union all
select 13,  '��� ����',             4, 160000 from dual union all
select 14,  '��� ������',           3, 90000 from dual union all
select 15,  '����-��� �����',       2, 200000 from dual union all
select 16,  '�������� ��������',    1, 90000 from dual union all
select 17,  '���-��� ������',       2, 200000 from dual union all
select 18,  '���� ����',            3, 160000 from dual union all
select 19,  '���� �����',           4, 90000 from dual;


insert into bosses
select 1, '��������������',         8 from dual union all
select 2, '����������',             7 from dual union all
select 3, '������',                 6 from dual union all
select 4, '������������',           5 from dual union all
select 5, '������',                 4 from dual union all
select 6, '���������',              3 from dual union all
select 7, '������ � ����������',    2 from dual union all
select 8, '̸����� ����',           1 from dual;

commit;

select * from employees;

select * from bosses;