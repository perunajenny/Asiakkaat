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
		<th colspan="5" class="oikealle"><span id="uusiAsiakas">Lisää uusi asiakas</span></th>
		</tr>
		<tr>
		<th class="oikealle">Hakusana:</th>
		<th colspan="3"><input type="text" id="hakusana"></th>
		<th class="vasemmalle"><input type="button" value="Hae" id="hakunappi"></th>
		</tr>			
		<tr>
			<th class="vasemmalle">Etunimi</th>
			<th class="vasemmalle">Sukunimi</th>
			<th class="vasemmalle">Puhelin</th>
			<th class="vasemmalle">Sposti</th>		
			<th></th>					
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<script>
$(document).ready(function(){
	
	$("#uusiAsiakas").click(function(){
		document.location="lisaaasiakas.jsp";
	});
	
	haeAsiakkaat();
	$("#hakunappi").click(function() {
		haeAsiakkaat();
	});
	$(document.body).on("keydown", function(event){
		  if(event.which==13){
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
        	htmlStr+="<td><span class='poista' onclick=poista('"+field.etunimi+"')>Poista</span></td>";  
        	htmlStr+="</tr>";
        	$("#listaus tbody").append(htmlStr);
        });	
    }});
}

function poista(etunimi){
	if(confirm("Poista asiakas " + etunimi +"?")){
		$.ajax({url:"asiakkaat/"+etunimi, type:"DELETE", dataType:"json", success:function(result) { //result on joko {"response:1"} tai {"response:0"}
	        if(result.response==0){
	        	$("#ilmo").html("Asiakkaan poisto epäonnistui.");
	        }else if(result.response==1){
	        	$("#rivi_"+etunimi).css("background-color", "red"); //Värjätään poistetun asiakkaan rivi
	        	alert("Asiakkaan " + etunimi +" poisto onnistui.");
				haeAsiakkaat();        	
			}
	    }});
	}
}
</script>

</body>
</html>