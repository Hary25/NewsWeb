<%@include file = "connect.jsp"%>

<% 
String firstname=request.getParameter("firstname");

String password=request.getParameter("password");


if(firstname.equals("") && password.equals("")){
	
}else{
	String query = "Select * FROM user WHERE firstname LIKE '"+firstname+"' And password like'"+password+"'"; 
	ResultSet rs= st.executeQuery(query);
	rs.first();
		session.setAttribute("id",rs.getString(1));
		session.setAttribute("fullname",rs.getString(2));
		session.setAttribute("email",rs.getString(3));
		session.setAttribute("status", rs.getString(5));
		Integer online = (Integer)(application.getAttribute("totalonline") == null ? 0 : application.getAttribute("totalonline"));
		online++;
		application.setAttribute("totalonline", online);
		response.sendRedirect("index.jsp");
}

%>