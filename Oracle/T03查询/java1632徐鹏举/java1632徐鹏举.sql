select * from emp
--1 ���г�������һ��Ա�������в��š�
select * from dept where deptno in 
(select d.deptno from dept d,emp e where e.deptno = d.deptno group by d.deptno)
--2 ���г�н��ȡ�SMITH���������Ա����
select * from emp where sal >(select sal from emp where ename = 'SMITH')
--3 ���г�����Ա������������ֱ���ϼ���������
select e.ename,b.ename from emp e,(select * from emp) b where e.mgr = b.empno(+)
--4 ���г��ܹ�����������ֱ���ϼ�������Ա����
select e.* from emp e,(select * from emp) b where e.mgr = b.empno and e.hiredate<b.hiredate
--5 ���г��������ƺ���Щ���ŵ�Ա����Ϣ��������Щû��Ա���Ĳ��š�
select d.dname,e.* from emp e right join dept d on e.deptno = d.deptno
--6 ���г�����jobΪ��CLERK��������Ա�����������䲿�����ơ�
select e.ename,d.dname from dept d,emp e where e.deptno=d.deptno and e.empno in 
(select empno from emp where job = 'CLERK')
select em.ename,d.dname from dept d right join (select * from emp e where job='CLERK') em on em.deptno=d.deptno 
--7 ���г����н�����1500�ĸ��ֹ�����
select job from emp group by job having min(sal)>1500
--8 ���г��ڲ��š�SALES�������۲���������Ա�����������ٶ���֪�����۲��Ĳ��ű�š�
select ename from emp where deptno  = (select deptno from dept where dname = 'SALES')
--9 ���г�н����ڹ�˾ƽ��н�������Ա����
select ename from emp where sal > (select avg(sal) from emp)
--10 ���г��롰SCOTT��������ͬ����������Ա����
select * from emp where job = (select job from emp where ename = 'SCOTT')
--11 ���г�н����ڲ��� 30 ��Ա����н�������Ա����������н��
select * from emp where sal in(select distinct sal from emp where deptno='30')
--12 ���г�н������ڲ���30����������Ա����ƽ��н���Ա��������н��
select * from emp where sal>(select avg(sal) from emp where deptno = 30)
--13 ���г���ÿ�����Ź�����Ա��������ƽ�����ʺ�ƽ���������ޡ�
select count(empno),avg(sal) from emp group by deptno 
--14 ���г�����Ա�����������������ƺ͹��ʡ�
select e.ename,d.dname,e.mgr from emp e left join dept d on e.deptno=d.deptno
--15 ���г�����ͬһ�ֹ��������ڲ�ͬ���ŵ�Ա����һ����ϡ�
select * from emp e ,(select * from emp) b where e.job=b.job and e.deptno!=b.deptno
--16 ���г����в��ŵ���ϸ��Ϣ�Ͳ���������
select count(empno),e.deptno,d.dname,d.loc from emp e left join dept d on e.deptno = d.deptno group by e.deptno,d.dname,d.loc
--17 ���г����ֹ�������͹��ʡ�
select min(sal),job from emp group by job
--18 ���г��������ŵ�MANAGER�����������н��jobΪMANAGER����
select d.deptno,d.dname,min(mgr) from emp e left join dept d on e.deptno = d.deptno where job='MANAGER' group by d.deptno,d.dname
--19 ���г�����Ա�����깤�ʣ�����н�ӵ͵�������
select emp.ename,emp.mgr*12 from emp order by emp.mgr*12 desc
