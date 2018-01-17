java1632 朱志达
--  1、列出至少有一个员工的所有部门。
    select * from dept where deptno in(select e.deptno from dept d left join emp e on d.deptno=e.deptno )

--  2、列出薪金比“SMITH”多的所有员工。
    select ename 员工姓名 from emp where sal>(select  sal from emp where ename='SMITH')

--  3、列出所有员工的姓名及其直接上级的姓名。
    select e.ename 员工姓名 ,m.ename 领导姓名  from emp e,emp m where e.mgr=m.empno

--  4、列出受雇日期早于其直接上级的所有员工。
    select e.ename 员工姓名 from emp e,emp m where e.mgr=m.empno and e.hiredate>=m.hiredate

--　5、列出部门名称和这些部门的员工信息，包括那些没有员工的部门。
    select * from dept d left join emp e on e.deptno=d.deptno

--　6、列出所有job为“CLERK”（办事员）的姓名及其部门名称。
    select e.ename  办事员姓名,d.dname 部门名称 from dept d inner join emp e on d.deptno =e.deptno where e.job= 'CLERK'

--　7、列出最低薪金大于1500的各种工作。
    select e.job 最低薪金大于1500的各种工作 from emp e left join emp r on e.empno=r.empno where r.sal>1500

--　8、列出在部门“SALES”（销售部）工作的员工的姓名，假定不知道销售部的部门编号。
    select ename 员工姓名 from emp where deptno in (select deptno from dept where dname='SALES')

--　9、列出薪金高于公司平均薪金的所有员工。
    select ename 薪金高于公司平均薪金的所有员工 from emp where sal>(select avg(sal) from emp)

--　10、列出与“SCOTT”从事相同工作的所有员工。
    select * from emp where job in(select job from emp where ename='SCOTT')

--　11、列出薪金等于部门30中员工的薪金的所有员工的姓名和薪金。
    select ename,sal from emp where sal =(select sum(sal) from emp where deptno=30)

--　12、列出薪金高于在部门30工作的所有员工的薪金的员工姓名和薪金。
    select ename,sal from emp where sal >(select sum(sal) from emp where deptno=30)

--　13、列出在每个部门工作的员工数量、平均工资和平均服务期限。
    select d.dname 部门名称,count(e.empno) 员工数量,avg(e.sal) 平均工资,avg(e.comm) 平均服务期限 from emp e left join  dept d on e.deptno = d.deptno group by d.dname

--　14、列出所有员工的姓名、部门名称和工资。
    select e.ename,d.dname,e.sal from emp e left join dept d on e.deptno=d.deptno

--　15、列出从事同一种工作但属于不同部门的员工的一种组合。
    select e.ename 姓名,e.job 工作,e.deptno 部门 from emp e left join emp r on e.job= r.job where e.deptno<>r.deptno
    
--　16、列出所有部门的详细信息和部门人数。
    select d.deptno 编号,d.dname 部门名称,count(e.deptno) 人数 from dept d left join emp e on e.deptno= d.deptno group by d.deptno,d.dname
--　17、列出各种工作的最低工资。
    select r.job 工作,min(e.sal) 最低工资 from emp e join emp r on e.empno=r.empno group by r.job

--　18、列出各个部门的MANAGER（经理）的最低薪金（job为MANAGER）。
    select  d.dname 部门,min(e.sal) 最低薪金 from emp e left join dept d on e.deptno=d.deptno where job='MANAGER' group by d.dname

--　19、列出所有员工的年工资，按年薪从低到高排序。
    select ename 员工姓名,sal*12 年薪 from emp order by sal*12 asc
