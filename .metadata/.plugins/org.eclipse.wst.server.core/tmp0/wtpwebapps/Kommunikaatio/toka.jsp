<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%

	String nimi = request.getParameter("nimi");
	out.print("Nimi on " + nimi + "<br>");
	String ikaStr = request.getParameter("ika");
	out.print("\nIk? on " + ikaStr + "<br>");
	
	int vuosiPois = Integer.parseInt(ikaStr)-1;
	out.print("Ik? miinus yksi vuosi on " + vuosiPois);

%>
<br>
<span id="nimi"></span>
<span id="ika"></span>
<script>
$(document).ready(function(){
	var nimi = requestURLParam("nimi");
	console.log(nimi);
	$("#nimi").text("Nimi on " + nimi);
	$("#ika").text("Ik? on " + requestURLParam("ika"));
	
	
});


</script>

</body>
</html>