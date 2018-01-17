package dao;
// default package

import java.util.HashSet;
import java.util.Set;

/**
 * Dept entity. @author MyEclipse Persistence Tools
 */

public class Dept implements java.io.Serializable {

	// Fields

	private int deptno;
	private String dname;
	private String loc;
	private Set emps = new HashSet(0);

	// Constructors

	@Override
	public String toString() {
		return "Dept [deptno=" + deptno + ", dname=" + dname + ", emps=" + emps
				+ ", loc=" + loc + "]";
	}

	/** default constructor */
	public Dept() {
	}

	/** full constructor */
	public Dept(String dname, String loc, Set emps) {
		this.dname = dname;
		this.loc = loc;
		this.emps = emps;
	}

	// Property accessors


	public String getDname() {
		return this.dname;
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getLoc() {
		return this.loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public Set getEmps() {
		return this.emps;
	}

	public void setEmps(Set emps) {
		this.emps = emps;
	}

}