package dao;
// default package

import java.util.HashSet;
import java.util.Set;


/**
 * Dept entity. @author MyEclipse Persistence Tools
 */

public class Dept  implements java.io.Serializable {


    // Fields    

     private int deptno;
     private String dname;
     private String loc;
  

    // Constructors

    /** default constructor */
    public Dept() {
    }

    
    /** full constructor */
    public Dept(String dname, String loc) {
        this.dname = dname;
        this.loc = loc;
      
    }

   
    // Property accessors

   

    public String getDname() {
        return this.dname;
    }
    
    @Override
	public String toString() {
		return "Dept [deptno=" + deptno + ", dname=" + dname + ", loc=" + loc
				+ "]";
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

   








}