<%@include file = "connect.jsp"%>

<% 
String firstname=request.getParameter("firstname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String confirm=request.getParameter("confirm");

if(firstname.equals("") && password.equals("")&&email.equals("") &&confirm.equals("")){
	
}else if(!password.equals(confirm)){
	
}else{
	st.executeUpdate("insert into user values(0,'"+firstname+"','"+email+"','"+password+"','Member')");
	response.sendRedirect("index.jsp");
}

%>