<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Anna seuraavat tiedot: <br><br>

	<form action="nayta.jsp" method="POST"> 
	Etunimi: <input type="text" name="etunimi"><br>
	Sukunimi: <input type="text" name="sukunimi"><br>
	S�hk�posti: <input type="text" name="sposti"><br>
	Puhelin: <input type="text" name="puhelin"><br>
	Syntym�vuosi: <input type="text" name="svuosi"><br><br>
	<input type="submit" value="L�het�">
	</form>

</body>
</html>