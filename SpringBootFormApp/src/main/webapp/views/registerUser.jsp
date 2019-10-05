<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-color: lightyellow;
	text-align: center;
	font-weight: bold;
}

.error {
	color: red;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('form[id="userForm"]').validate({
			rules:{
				username :'required',
				password :'required',
				email :{
					required :true,
					email :true
					},
			phno: 'required',
				},

				message:{
			username :'Please Enter userName',
			password :'Please Enter password',
			email :'Please Enter email',
			phno :'Please Enter Phone No.'	
					},

			submitHandler:function(form){
				form.submit();
				}		
			});
		});	

</script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>
		<font color='green'>${msg}</font>
	</h3>
	<h1 style="color: blue;">Register Here...!!</h1>
	<form:form id="userForm" action="register" method="post"
		modelAttribute="user">
		<table>
			<tr>
				<th>UserName:</th>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<th>Password:</th>
				<td><form:password path="password" /></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td><form:input path="phno" /></td>
			</tr>
			<tr>
				<td><input type="reset" value="Reset" /></td>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>