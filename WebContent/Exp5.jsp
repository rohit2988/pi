<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		$("form").append("<select><option>-select-</option></select>").html();
		$("form").next().text()==$("ul").text()?$("select").add("<option>"+$("ul").first().text()+"</option>"):alert("hello");
});
</script>
</head>
<body>
<form>
<ul>
Madhya Pradesh
<li>Indore
	<ul>
		<li>Palasia</li>
		<li>Janjeerwala</li>
			<ul>
				<li>Krisna Tower
					<ul>
						<li>Abhitek</li>
					</ul>
				</li>
					<li>Cure Well</li>
					<li>Apna Hotel</li>
			</ul>
		<li>Gomasta</li>	
	</ul>
</li>
<li>Jabalpur
	<ul>
		<li>Trimurti Nagar</li>
		<li>Tulsi Nagar</li> 	
	</ul>
</li>	
<li>Katni
	<ul>
		<li>Adarsh Colony</li>
		<li>Puraini</li>
	</ul>
</li>	
Andhra Pradesh	
<li>Hyderabad</li>
	<ul>
		<li>Ameerpet
			<ul>
				<li>Raj Towers</li>
				<li>Sai Hostel</li>
			</ul>	
		</li>		

		<li>Hitech City
			<ul>
				<li>Google</li>
				<li>Microsoft</li>
				<li>Infosys</li>
				<li>Wipro</li>
				<li>TCS</li>
			</ul>
		</li>		
	</ul>	
Karnataka
<li>Bangalore
	<ul>
		<li>Silk Board
			<ul>
			<li>S.N. Men's Hostel</li>
			<li>M.R.A</li>
			</ul>
		</li>
		
		<li>Ring Road
			<ul>
				<li>Seshna IT Park
					<ul>
						<li>Cisco</li>
						<li>Accenture</li>
					</ul>
				</li>
				
				<li>ecospace
					<ul>
						<li>Capgemini</li>
						<li>Amazon</li>
					</ul>
				</li>
			</ul>
		</li>	
	</ul>
</li>	
</ul>
</form>	
</body>
</html>