<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.oikealle{
	text-align: right;
}
.vasemmalle{
	text-align: left;
}

</style>
</head>
<body>
<table id="listaus">
	<thead>	
		<tr>
		<th class="oikealle">Hakusana:</th>
		<th colspan="2"><input type="text" id="hakusana"></th>
		<th class="vasemmalle"><input type="button" value="Hae" id="hakunappi"></th>
		</tr>			
		<tr>
			<th class="vasemmalle">Etunimi</th>
			<th class="vasemmalle">Sukunimi</th>
			<th class="vasemmalle">Puhelin</th>
			<th class="vasemmalle">Sposti</th>							
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<script>
$(document).ready(function(){
	
	haeAsiakkaat();
	$("#hakunappi").click(function() {
		console.log($("#hakusana").val());
		haeAsiakkaat();
	});
	$(document.body).on("keydown", function(event){
		  if(event.which==13){ //Enteri� painettu, ajetaan haku
			  haeAsiakkaat();
		  }
	});
	$("#hakusana").focus();
});	

function haeAsiakkaat() {
	$ ("#listaus tbody").empty();
	$.ajax({url:"asiakkaat/"+$("#hakusana").val(), type:"GET", dataType:"json", success:function(result){	
		$.each(result.asiakkaat, function(i, field){  
        	var htmlStr;
        	htmlStr+="<tr>";
        	htmlStr+="<td>"+field.etunimi+"</td>";
        	htmlStr+="<td>"+field.sukunimi+"</td>";
        	htmlStr+="<td>"+field.puhelin+"</td>";
        	htmlStr+="<td>"+field.sposti+"</td>";  
        	htmlStr+="</tr>";
        	$("#listaus tbody").append(htmlStr);
        });	
    }});
	
	
}

</script>

</body>
</html>