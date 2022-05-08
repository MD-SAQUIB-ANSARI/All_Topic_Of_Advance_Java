<%
	String msg=request.getParameter("msg");
	if(msg!=null){
		out.println(msg);}
%>

<!DOCTYPE html>
<html>
<body>
	<form method="post" action="Validate.jsp">
		<table>
			<caption>
				Employee Login Screen
			</caption>
			<tr>
			<td> User ID</td>
			<td><input type="text" name="userName" placeholder="Employee Number"></td>
			</tr>
			<tr>
			<td> User Password</td>
			<td><input type="text" name="userPassword" placeholder="Employee Name"></td>
			</tr>
			
			<tr>
			<td><input type="submit" value="Login Employee"></td>
			</tr>
		</table>
	</form>
</body>
</html>