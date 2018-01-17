--01、列出至少有一个员工的所有部门。
select d.deptno ,d.dname from dept d where deptno in ( select distinct deptno from emp) 
--02 列出薪金比“SMITH”多的所有员工。
select * from emp where sal>(select sal from emp where ename='SMITH');
--03.-列出所有员工的年工资，按年薪从低到高排序。
select e.ename ,e.sal*12 sal from emp e order by sal 
--04、列出所有员工的姓名及其直接上级的姓名。
select a.ename "雇员",b.ename "上级" from emp a,emp b where a.mgr=b.empno	
--05.列出各种工作的最低工资。
select job ,min(sal) msal  from emp  group by job
--06、列出受雇日期早于其直接上级的所有员工
select * from emp x where hiredate>(select hiredate from emp where x.mgr=empno)
select * from emp a,emp b where a.hiredate>b.hiredate and a.mgr=b.empno
--07.列出所有员工的姓名、部门名称和工资。
select e.ename,d.dname,e.sal from emp e,dept d where e.deptno=d.deptno
select e.ename,d.dname ,e.sal from emp e left join dept d on e.deptno=d.deptno order by e.sal
--08、列出部门名称和这些部门的员工信息，包括那些没有员工的部门。
select b.deptno,b.dname,a.ename from emp a,dept b where a.deptno(+)=b.deptno
select d.dname,e.* from dept d left join emp e on d.deptno=e.deptno
--09、列出所有job为“CLERK”（办事员）的姓名及其部门名称
select a.ename,b.dname from emp a,dept b where a.deptno=b.deptno and a.job='CLERK'
--10、列出最低薪金大于1500的各种工作。
select job,min(sal)  minsal from emp group by job having min(sal)>1500
--11、列出在部门“SALES”（销售部）工作的员工的姓名，假定不知道销售部的部门编号
select ename from emp where job like 'SALES％'
select *from emp
--12、列出薪金高于公司平均薪金的所有员工。
select ename from emp where sal >(select avg(sal) from emp);
--13、列出与“SCOTT”从事相同工作的所有员工。
select * from emp where job=(select job from emp where ename='SCOTT')
--14、列出薪金等于部门30中员工的薪金的所有员工的姓名和薪金。
select ename "姓名",sal "工资"from emp where sal in(select sal from emp where deptno=30)
--15、列出在每个部门工作的员工数量、平均工资和平均服务期限。
select  deptno,count(ename)"员工数量" ,avg(sal) "平均工资"，avg((select sysdate from dual)-hiredate) "平均服务期限" from emp 
group by deptno
--16、列出各种工作的最低工资。
select job,min(sal) from emp group by job
--17、列出各个部门的MANAGER（经理）的最低薪金（job为MANAGER）。
select deptno,min(sal) from emp where job='MANAGER' group by deptno ;
--18、列出从事同一种工作但属于不同部门的员工的一种组合。
select a.deptno,a.job,b.deptno,b.job from emp a,emp b
where a.deptno<>b.deptno and a.job=b.job;
--19、列出薪金高于在部门30工作的所有员工的平均薪金的员工姓名和薪金。
select ename ,sal from emp where sal>(select avg(sal) from emp where deptno=30)
--20、列出所有部门的详细信息和部门人数。
select a.*,b.dcount from
(select * from dept) a,
（select deptno,count(deptno) dcount from emp group by deptno) b
where a.deptno=b.deptno
