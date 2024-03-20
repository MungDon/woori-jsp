<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		
		text-align : center;
		width : 500px;
		height : 500px;
	}
	table,td,th{
		font-size : 50px;
		border-collapse: collapse;
		border : 1px solid black;
	}
	th{
		background-color : skyblue;
	}
	.container{
		display : flex;
		flex-direction : column;
		align-items : center;
		border : 1px solid black;
	}
	.gugudan{
		text-align : center;
		width : 100px;
	
	}
	.multi{
		border-radius : 10px;
		border : 1px solid darkgray;
		padding-bottom: 20px;
		margin-bottom : 10px;
	}

</style>
</head>
<body>
	<% for(int i = 0; i<3; i++){ %>
			<h1><%= i %>hello word<br></h1>
	<%} %>
	
	<hr color="red"/>
	
	<% String[] name = {"java","jsp","spring"};%>
		<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
		</tr>
		<%for(int i = 0 ; i<name.length; i++){ %>
			<tr>
				<td><%= i+1 %></td>
				<td><%= name[i] %></td>
			</tr>
		<%} %>
		</table>
	<hr color="blue"/>
<div class="container">
	<div class="gugudan">
		<% for(int i = 2; i<=9; i++){%>
		<div class="multi">
				<h1><%=i %>단</h1>
			<% for(int j = 1; j<=9; j++){%>
				<% int result = i*j; %>
				<%= i%> x <%=j %> = <strong><%=result %></strong><br/>
			<%} %>
			</div>
		<%}%>
	</div>	
</div>	
</body>
</html>