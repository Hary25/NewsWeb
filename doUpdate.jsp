<%@include file = "connect.jsp"%>

<% 
String firstname=request.getParameter("firstname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String confirm=request.getParameter("confirm");

if(firstname.equals("") && password.equals("")&&email.equals("")){

}else{
	st.executeUpdate("update  user set firstname='"+firstname+"',email='"+email+"',password='"+password+"' where Userid='"+session.getAttribute("id")+"'  ");
	String query = "Select * FROM user where Userid='"+session.getAttribute("id")+"' "; 
	ResultSet rs= st.executeQuery(query);
	rs.first();
	session.setAttribute("fullname",rs.getString(2));
	session.setAttribute("email",rs.getString(3));
	response.sendRedirect("index.jsp");
}

%>