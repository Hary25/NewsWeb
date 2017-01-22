<%
//hancurin session dlu
if((session.getAttribute("status") == null)){
	 response.sendRedirect("index.jsp");
}else{
 session.invalidate();
 Integer online = (Integer)(application.getAttribute("totalonline") == null ? 0:application.getAttribute("totalonline"));	
 online--;
 application.setAttribute("totalonline", online);
 
 response.sendRedirect("index.jsp");
}
%>