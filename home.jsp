<%@include file = "connect.jsp"%>
<% 
	String query = "Select * FROM berita"; 
				ResultSet rs = st.executeQuery(query);
%>
<%while(rs.next()){ %>
<img src="<%=rs.getString(4)%>">
<% }%>