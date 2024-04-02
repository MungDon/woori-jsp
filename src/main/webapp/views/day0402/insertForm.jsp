<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>InsertForm</h1>
<form action="insertPro.jsp"method="post">
	아이디 : <input type="text" name="id"/><br/>
	비밀번호 : <input type="password" name="pw"/><br/>
	이름 : <input type="text" name="name"/><br/>
	생일 : <input type="date" name="birth"/><br/>
	통신사 <br/>
	<select name="phone1">
		<option value="KT">KT</option>
		<option value="SKT">SKT</option>
		<option value="U+">U+</option>
		<option value="알뜰폰">알뜰폰</option>
	</select>
	전화번호 : <input type="text" name="phone2"/><br/>
	성별<br/>
	<input type="radio" name="gender" value="M"/>남성
	<input type="radio" name="gender" value="W"/>여성
	<br/>
	<input type="submit" value="회원가입"/>
</form>