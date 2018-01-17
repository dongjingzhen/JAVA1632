REM PL/SQL Developer SQL History
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

--09、列出薪金高于在部门30工作的所有员工的平均薪金的员工姓名和薪金。
select ename ,sal from emp where sal>(select avg(sal) from emp where deptno=30)
--10、列出所有部门的详细信息和部门人数。
select a.*,b.dcount from
(select * from dept) a,
（select deptno,count(deptno) dcount from emp group by deptno) b
where a.deptno=b.deptno
