<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<%@ include file="header.html" %>
<h1>This is Welcome Page
<jsp:getProperty property="userName" name="user"/>
</h1>

<h5>My Code </h5>
<h5>My Code </h5>
<h5>My Code </h5>
<h5>My Code </h5>
<h5>My Code </h5>


<%@ include file="footer.jsp" %>
