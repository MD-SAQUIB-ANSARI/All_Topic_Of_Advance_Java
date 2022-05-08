
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>

<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

	<jsp:setProperty property="*" name="user"/>
<%
	if(dao.validatin(user)==true)
	{
%>
	
	<jsp:forward page="welcome.jsp"></jsp:forward>
<%
	}else{
%>
<jsp:forward page="index.jsp">
<jsp:param value="Please Check, Something Went Wrong..." name="msg"/></jsp:forward>
<%} %>
