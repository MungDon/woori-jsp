<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File"%>


<h1>/0325/uploadPro</h1>

<%
	String path = "C:/Program Files/sung/upload"; // 경로 : 작업폴더 속 upload 폴더 생성
	int max = 1024*1024*10;		// 최대크기
	String enc ="UTF-8"; 		// 인코딩
	DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();	//같은 파일이 있을 경우 1-1,1-2...등 이름을 붙여줌
	MultipartRequest mr = new MultipartRequest(request,path,max,enc,dp); // new 할때 이미 업로드가 되고있다
	
	String name = mr.getParameter("fileName");
	File f = mr.getFile("save");
%>

<h1>name : <%=name %></h1>
<h1>파일이름 : <%=f.getName() %>></h1>
<h1>파일크기 : <%=f.length() %>></h1>
<h1>파일 업로드 이름 : <%=mr.getFilesystemName("save") %></h1>
<h1>파일원본의 이름 : <%=mr.getOriginalFileName("save") %></h1>
<h1>파일의 타입 : <%=mr.getContentType("save") %></h1>