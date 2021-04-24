<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.time.LocalDate" %>

<%


String svuosiStr = request.getParameter("svuosi");

int svuosi = Integer.parseInt(svuosiStr);
LocalDate tanaan = LocalDate.now();
int vuosi = tanaan.getYear();
int ika = vuosi - svuosi;

if (ika < 18) {
	
	out.print("Alaikäinen");
	response.setHeader("Refresh", "5; URL=kysy.jsp");
	
} else {
	out.print("Käyttäjän tiedot: " + "<br>");

	String etunimi = request.getParameter("etunimi");
	String sukunimi = request.getParameter("sukunimi");
	out.print("Nimi: " + etunimi + sukunimi + "<br>");
	String sposti = request.getParameter("sposti");
	out.print("Sähköposti: " + sposti + "<br>");
	String puhelin = request.getParameter("puhelin");
	out.print("Puhelin: " + puhelin + "<br>");
	out.print("Ikä: " + ika);
}

%>

</body>
</html>