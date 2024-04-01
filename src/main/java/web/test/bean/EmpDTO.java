package web.test.bean;

import java.sql.Timestamp;

public class EmpDTO {	// Data transfer object
	
	private int empno;		// 사원번호
	
	private String ename;	// 사원이름
	
	private String job;		// 직무
	
	private int mgr;			// 상사번호
	
	private Timestamp hiredate;	// 입사일자
	
	private int sal;				// 급여
	
	private int comm;			// 보너스
	
	private int deptno;		// 부서 번호

	//setter()
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public void setJob(String job) {
		this.job = job;
	}
	
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	
	public void setHiredate(Timestamp hiredate) {
		this.hiredate = hiredate;
	}
	
	public void setSal(int sal) {
		this.sal = sal;
	}
	
	public void setComm(int comm) {
		this.comm = comm;
	}
	
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
	/*<------------- getter() -------------->*/
	public int getEmpno() {
		return empno;
	}
	
	public String getEname() {
		return ename;
	}
	
	public String getJob() {
		return job;
	}
	
	public int getMgr() {
		return mgr;
	}
	
	public Timestamp getHiredate() {
		return hiredate;
	}
	
	public int getSal() {
		return sal;
	}
	
	public int getComm() {
		return comm;
	}
	
	public int getDeptno() {
		return deptno;
	}
	

}
