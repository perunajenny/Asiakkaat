<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hei!
<a href="toka.jsp?nimi=jaska&ika=10">L�het�</a>
<form action="kolmas.jsp" method="POST"> 
	Tunnus: <input type="text" name="tunnus"><br>
	Salasana: <input type="password" name="pwd">
	<input type="submit" value="L�het�">

</form>
</body>
</html>