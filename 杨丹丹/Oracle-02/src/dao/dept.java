package dao;
// default package

import java.util.HashSet;
import java.util.Set;

/**
 * dept entity. @author MyEclipse Persistence Tools
 */

public class dept implements java.io.Serializable {

	// Fields

	private int deptno;
	private String dname;
	private String loc;

	// Constructors

	/** default constructor */
	public dept() {
	}

	/** full constructor */
	public dept(String dname, String loc) {
		this.dname = dname;
		this.loc = loc;
		
	}

	// Property accessors

	

	public String getDname() {
		return this.dname;
	}

	public int getDeptno() {
		return deptno;
	}


	@Override
	public String toString() {
		return "dept [deptno=" + deptno + ", dname=" + dname + ", loc=" + loc
				+ "]";
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

	

}