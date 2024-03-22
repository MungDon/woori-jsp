package web.test.jsp;

public class Calc {

	private String num1; // 첫번째 숫자

	private String num2; // 두번째 숫자

	private String oper;	// 연산

	private int result; // 결과값

	/* setter() */
	public void setNum1(String num1) {
		try {
				Integer.parseInt(num1);
				this.num1 = num1;
		} catch (Exception e) {
				this.num1 = "0";
		}

	}

	public void setNum2(String num2) {
		try {
				Integer.parseInt(num2);
				this.num2 = num2;
		} catch (Exception e) {
				num2 = "0";
		}
	}

	public void setOper(String oper) {
		this.oper = oper;
	}

	/* getter() */
	public String getNum1() {
		return num1;
	}

	public String getNum2() {
		return num2;
	}

	public String getOper() {
		return oper;
	}

	public int getResult() {
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		if(oper.equals("+")) {
			result = a+b;
		}else if(oper.equals("-")) {
			result = a-b;
		}else if(oper.equals("*")) {
			result = a*b;
		}else if(oper.equals("/")){
			result = a/b;
		}
		return result;
	}
}
