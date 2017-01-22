<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>The News</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>


 <!-- Navbar -->  
<div class="navbarNews">
    <!-- Second navbar for search -->
    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-3">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">The News</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-3">
          <ul class="nav navbar-nav navbar-right">

            <li><a href="index.jsp">NEWS</a></li>
            <li><a href="hypw.jsp">HYPW</a></li>
            <li><a href="life.jsp">LIFE</a></li>
            <li><a href="sport.jsp">SPORT</a></li>
            <li><a href="tech.jsp">TECH</a></li>
            
            <li>
              <a class="btn btn-default btn-outline btn-circle search_form"  data-toggle="collapse" href="#nav-collapse3" aria-expanded="false" aria-controls="nav-collapse3">Search</a>
            </li>
            <% if(session.getAttribute("status")==null){%>
            <li><a href="sign.jsp">REGISTER/LOGIN</a></li>
            <%}else{%>
            <li><a href="profile.jsp">PROFILE</a></li>
            <% if(session.getAttribute("status").equals("Admin")){%>
          	<li><a href="post.jsp">POST</a></li>
          <%}%>
            <li><a href="doLogout.jsp">LOGOUT</a></li>
            <%}%>
          
            <li>
             <a href="#">User Online:
            <%if(application.getAttribute("totalonline")==null){%>
				<%=0%>
				<%}else{%>
				<%=application.getAttribute("totalonline") %>
			</a>
			<%}%>
			</li>
			
          </ul>
          <div class="collapse nav navbar-nav nav-collapse" id="nav-collapse3">
            <form class="navbar-form navbar-right" role="search">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" />
              </div>
              <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </form>
          </div>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
 </div>	


<!-- Navbar -->  
<h2>Add News</h2>
	
		<form class="form-register" action="doPost.jsp" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Ttile</td>
			<td><input type="text" name="title" class="input-form"></td>
		</tr>
		<tr>
			<td>Category</td>
			<td><select name="category" class="input-form" style="width: 220px">
				<option></option>
				<option value="Hype">Hype</option>
				<option value="life">life</option>
				<option value="sport">sport</option>
				<option value="tech">tech</option>
			</select></td>
		</tr>
		<tr>
			<td>Image</td>
			<td><input type="file" name="image" ></td>
		</tr>
			<tr>
			<td>Content</td>
				<td>
					<TEXTAREA rows="10" cols="100" name="content"></TEXTAREA>
				</td>
			</tr>

		<tr>
			<td> <br><input type="submit" name="Register"  class="input-login">  </td>
		</tr>
			
		
	</table>
		</form>
	

 <br><br><br><br><br><br><br><br><br><br><br><br> <br><br><br><br><br><br><br><br><br><br><br><br>
<!-- Footer -->  
<section class="footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-4  col-md-4 col-sm-4 rapih">
			<h4>Contact Us</h4>
			<h5>Call +62 21 895671</h5>
			<h5>Email marketing@news.com</h5>
			</div>


			<div class="col-lg-4  col-md-4 col-sm-4 rapih">
			<h4>Follow Us</h4>
			<img src="img/facebook.png">
			<img src="img/twitter.png">
			<img src="img/youtube.png">
			<img src="img/instagram.png">

			</div>

			<div class="col-lg-4  col-md-4 col-sm-4 rapih">
			<h4>Address</h4>
			<h5>Jl. Kebon Jeruk Raya No.27.</h5>
			<h5>Kebon Jeruk, Jakarta Barat</h5>
			<h5>Daerah Khusus Ibukota Jakarta 11530</h5>
			</div>
		</div>
	</div>
</section>
<!-- Footer -->  


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/myjs.js"></script>
</body>
</html>