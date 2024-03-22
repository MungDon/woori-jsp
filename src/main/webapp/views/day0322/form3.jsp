<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>form3</h1>
<h2>계산기</h2>
<form action="pro3.jsp" method="post">
	숫자1 : <input type="text" name="num1"/><br/>
	숫자2 : <input type="text" name="num2"/><br/>
	부호<br> 
	+<input type="radio" name="oper" value="+"/>
	-<input type="radio" name="oper" value="-"/>
	*<input type="radio" name="oper" value="*"/>
	/<input type="radio" name="oper" value="/"/><br/>
	<button type="submit">=</button>
</form>