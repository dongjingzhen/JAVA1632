REM PL/SQL Developer SQL History
--01���г�������һ��Ա�������в��š�
select d.deptno ,d.dname from dept d where deptno in ( select distinct deptno from emp) 
--02 �г�н��ȡ�SMITH���������Ա����
select * from emp where sal>(select sal from emp where ename='SMITH');
--03.-�г�����Ա�����깤�ʣ�����н�ӵ͵�������
select e.ename ,e.sal*12 sal from emp e order by sal 
--04���г�����Ա������������ֱ���ϼ���������
select a.ename "��Ա",b.ename "�ϼ�" from emp a,emp b where a.mgr=b.empno  
--05.�г����ֹ�������͹��ʡ�
select job ,min(sal) msal  from emp  group by job
--06���г��ܹ�����������ֱ���ϼ�������Ա��
select * from emp x where hiredate>(select hiredate from emp where x.mgr=empno)
select * from emp a,emp b where a.hiredate>b.hiredate and a.mgr=b.empno
--07.�г�����Ա�����������������ƺ͹��ʡ�
select e.ename,d.dname,e.sal from emp e,dept d where e.deptno=d.deptno
select e.ename,d.dname ,e.sal from emp e left join dept d on e.deptno=d.deptno order by e.sal
--08���г��������ƺ���Щ���ŵ�Ա����Ϣ��������Щû��Ա���Ĳ��š�
select b.deptno,b.dname,a.ename from emp a,dept b where a.deptno(+)=b.deptno
select d.dname,e.* from dept d left join emp e on d.deptno=e.deptno

--09���г�н������ڲ���30����������Ա����ƽ��н���Ա��������н��
select ename ,sal from emp where sal>(select avg(sal) from emp where deptno=30)
--10���г����в��ŵ���ϸ��Ϣ�Ͳ���������
select a.*,b.dcount from
(select * from dept) a,
��select deptno,count(deptno) dcount from emp group by deptno) b
where a.deptno=b.deptno
