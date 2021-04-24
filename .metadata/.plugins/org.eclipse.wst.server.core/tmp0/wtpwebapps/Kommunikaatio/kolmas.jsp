<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String tunnus = request.getParameter("tunnus");
out.print("Tunnus on " + tunnus + "<br>");
String salasana = request.getParameter("pwd");
out.print("Salasana on " + salasana + "<br>");

%>

</body>
</html>