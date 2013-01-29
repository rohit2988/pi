<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travershing</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
		$("tr").each(function(){
			//if($(this).closest("input:text").val()=='')
				
			$(this).removeClass("div");
		    $(this).find("span").hide();
		});
		
				if($("#TxtName").val()=="")
				{
				 $("#tr1").addClass("div");
				 $("#tr1").find("span").show().text("This field is required");
				}
				if($("#TxtEmail").val()==""){
					 $("#tr2").addClass("div");
					 $("#tr2").find("span").show().text("This field is required");
				}
				if($("#TxtPwd").val().length<6){
					 $("#tr3").addClass("div");
					 $("#tr3").find("span").show().text("This field is required");
					}
				if($("#TxtDOB").val()==""){
					 $("#tr4").addClass("div");
					 $("#tr4").find("span").show().text("This field is required");
				}
				if($("input:checked").length<=2)
				{
				 $("#tr6").addClass("div");
				 $("#tr6").find("span").show().text("Select atleast 2..");
				}
				if($("select option:selected").text()=="-select-")
				{
				$("#tr7").addClass("div");
				$("#tr7").find("span").show().text("Select any one..");
				}
			//else{
			//	$("label,input:text").removeClass("error");
			//}
				var email=$("#TxtEmail").val();
				var a=email.indexOf("@");
				var d=email.lastIndexOf(".");
				var name=$("#TxtName").val();
				var dob=$("#TxtDOB").val();
				if((a<1 || d<a+2 || d+2>=email.length) && email.length!=0){
					$("#tr2").addClass("div");
					 $("#tr2").find("span").show().text("Not a valid email");
				}
				
				for(i=0;i<name.length;i++)
					{
					 if((name.charAt(i)<'A' || name.charAt(i)>'Z') && (name.charAt(i)<'a' || name.charAt(i)>'z') && name.charAt(i)!='.' && name.charAt(i)!=' '){
						 $("#tr1").addClass("div");
						 $("#tr1").find("span").show().text("Name must be in alphabets");
					 }
					}
					
					if(dob.length>0 && dob.length!=8 || (dob.charAt(0)>=3 && dob.charAt(1)>1)  || (dob.charAt(3)>=1 && dob.charAt(4)>2) || (dob.charAt(2)!='/' || dob(5)!='/')){
						$("#tr4").addClass("div");
						 $("#tr4").find("span").show().text("DOB must b in dd/mm/yy");
					}
						
		
		
		
		
			});
});
</script>
<style>
.div{
color:red;
border-color:red;
}
</style>
</head>
<body>
	<form id="FrmTraversing">
		<center>
			<table border="1">
				<tr id="tr1">
					<td><div><label>Name:</label></div></td>
					<td><div><input type="text" id="TxtName"></div><span id="s1"></span></td>
				</tr>
				
				<tr id="tr2">
					<td><div><label>Email:</label></div></td>
					<td><div><input type="text" id="TxtEmail"></div><span id="s2"></span></td>
				</tr>
				
				<tr id="tr3">
					<td><div><label>Password:</label></div></td>
					<td><div><input type="password" id="TxtPwd"></div><span id="s3"></span></td>
				</tr>
				
				<tr id="tr4">
					<td><div><label>DOB:</label></div></td>
					<td><div><input type="text" id="TxtDOB"></div><span id="s4"></span></td>
				</tr>
				
				<tr>
					<td colspan="2">Gender</td>
					<td></td>
				</tr>
				
				<tr id="tr5">
					<td><div><input type="radio" name="Gender" id="Gender" value="Mail" checked>Male</div></td>
					<td><div><input type="radio" name="Gender" id="Gender" value="Female">Female</div></td>
				</tr>

				<tr id="tr6">
					<td>
						<div><input type="checkbox" name="Interest" value="Music">Music</div>
						<div><input type="checkbox" name="Interest" value="Dance">Dance</div>
						<div><input type="checkbox" name="Interest" value="Singing">Singing</div>
						<div><input type="checkbox" name="Interest" value="Reading">Reading</div>
					</td>
					<td><span id="s5"></span></td>
				</tr>

				<tr id="tr7">
					<td>
					<div><select name="DrpInterest" id="DrpInterest">
						<option>-select-</option>
						<option>A.R. Rahman</option>
						<option>Sahid</option>
						<option>Sonu Nigam</option>
						<option>Vivekanand</option>
						</select>
					</div>
						<span id="s6"></span>
					</td>
				</tr> 
			</table>
			
<input type="button" id="submit" value="Submit"/>
		</center>
	</form>
</body>
</html>