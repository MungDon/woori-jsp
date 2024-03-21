<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>form4</h1>
<h2>이름, 학년(radio),학번, 선택과목(select)</h2>

<form action="pro4.jsp" method="post">
	 이름 : <input type="text" name="name" /> <br>
	 학번 : <input type="text" name="studentNum"/> <br>
	 학년	  
	 <br>
	 <br>
	 <input type="radio" name="grade" value="1학년"/>1학년&nbsp;
	 <input type="radio" name="grade" value="2학년"/>2학년&nbsp;
	 <input type="radio" name="grade" value="3학년"/>3학년&nbsp;
	 <input type="radio" name="grade" value="4학년"/>4학년&nbsp;
	 <br>
	 <br>
	 선택과목  <br/>
	 <select name="subject">
		<option value="JAVA">JAVA</option>
		<option value="JSP">JSP</option>
		<option value="SPRING">SPRING</option>
		<option value="JPA">JPA</option>
		<option value="MYBATIS">MYBATIS</option>
	 </select>
	 <input type="submit" value="전송">
</form>