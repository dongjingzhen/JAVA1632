java1632 ��־��
--  1���г�������һ��Ա�������в��š�
    select * from dept where deptno in(select e.deptno from dept d left join emp e on d.deptno=e.deptno )

--  2���г�н��ȡ�SMITH���������Ա����
    select ename Ա������ from emp where sal>(select  sal from emp where ename='SMITH')

--  3���г�����Ա������������ֱ���ϼ���������
    select e.ename Ա������ ,m.ename �쵼����  from emp e,emp m where e.mgr=m.empno

--  4���г��ܹ�����������ֱ���ϼ�������Ա����
    select e.ename Ա������ from emp e,emp m where e.mgr=m.empno and e.hiredate>=m.hiredate

--��5���г��������ƺ���Щ���ŵ�Ա����Ϣ��������Щû��Ա���Ĳ��š�
    select * from dept d left join emp e on e.deptno=d.deptno

--��6���г�����jobΪ��CLERK��������Ա�����������䲿�����ơ�
    select e.ename  ����Ա����,d.dname �������� from dept d inner join emp e on d.deptno =e.deptno where e.job= 'CLERK'

--��7���г����н�����1500�ĸ��ֹ�����
    select e.job ���н�����1500�ĸ��ֹ��� from emp e left join emp r on e.empno=r.empno where r.sal>1500

--��8���г��ڲ��š�SALES�������۲���������Ա�����������ٶ���֪�����۲��Ĳ��ű�š�
    select ename Ա������ from emp where deptno in (select deptno from dept where dname='SALES')

--��9���г�н����ڹ�˾ƽ��н�������Ա����
    select ename н����ڹ�˾ƽ��н�������Ա�� from emp where sal>(select avg(sal) from emp)

--��10���г��롰SCOTT��������ͬ����������Ա����
    select * from emp where job in(select job from emp where ename='SCOTT')

--��11���г�н����ڲ���30��Ա����н�������Ա����������н��
    select ename,sal from emp where sal =(select sum(sal) from emp where deptno=30)

--��12���г�н������ڲ���30����������Ա����н���Ա��������н��
    select ename,sal from emp where sal >(select sum(sal) from emp where deptno=30)

--��13���г���ÿ�����Ź�����Ա��������ƽ�����ʺ�ƽ���������ޡ�
    select d.dname ��������,count(e.empno) Ա������,avg(e.sal) ƽ������,avg(e.comm) ƽ���������� from emp e left join  dept d on e.deptno = d.deptno group by d.dname

--��14���г�����Ա�����������������ƺ͹��ʡ�
    select e.ename,d.dname,e.sal from emp e left join dept d on e.deptno=d.deptno

--��15���г�����ͬһ�ֹ��������ڲ�ͬ���ŵ�Ա����һ����ϡ�
    select e.ename ����,e.job ����,e.deptno ���� from emp e left join emp r on e.job= r.job where e.deptno<>r.deptno
    
--��16���г����в��ŵ���ϸ��Ϣ�Ͳ���������
    select d.deptno ���,d.dname ��������,count(e.deptno) ���� from dept d left join emp e on e.deptno= d.deptno group by d.deptno,d.dname
--��17���г����ֹ�������͹��ʡ�
    select r.job ����,min(e.sal) ��͹��� from emp e join emp r on e.empno=r.empno group by r.job

--��18���г��������ŵ�MANAGER�����������н��jobΪMANAGER����
    select  d.dname ����,min(e.sal) ���н�� from emp e left join dept d on e.deptno=d.deptno where job='MANAGER' group by d.dname

--��19���г�����Ա�����깤�ʣ�����н�ӵ͵�������
    select ename Ա������,sal*12 ��н from emp order by sal*12 asc
