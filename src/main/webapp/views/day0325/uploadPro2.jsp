<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<h1>uploadPro2</h1>
<%
	
		String path = request.getRealPath("/views/upload");// 서비스된 서버의 경로
		int max = 1024*1024*10;// 파일 크기 설정
		String enc="UTF-8";	// 인코딩 설정
		DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();// 같은 파일있으면 파일명에 1, 2 붙임
		MultipartRequest mr = new MultipartRequest(request,path,max,enc,dp); // enctype="multipart/form-data" 로 전송한 폼에 담겨진 파라미터들에 대한 이름과 값을 얻어내기 위해 외부라이브러리 사용
																			// 저렇게 넘어온 데이터는 request 내장객체로 받을 수 없기 때문에
		Enumeration enu = mr.getFileNames();// 반복자 사용
		while(enu.hasMoreElements()){
			//Object name = enu.nextElement();
			String name = (String)enu.nextElement();
			out.println("<h1>"+mr.getFile(name).getName()+"</h1>");
		}
%>
<h1><%=path %></h1>
<h1><%=mr.getFilesystemName("upload1") %></h1>
<h1><%=mr.getFilesystemName("upload2") %></h1>
<h1><%=mr.getFilesystemName("upload3") %></h1>
<h1><%=mr.getFilesystemName("upload4") %></h1>
