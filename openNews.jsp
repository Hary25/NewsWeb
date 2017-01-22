
<!DOCTYPE html>
<html>
<head>
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

<!---->
<div class="container">
	<div class="row">
		<div class="col-md-8 title-news">
		<h3><b>Menjadi Kreativitas dengan kebiasaan ini</b></h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-9 photo_news">
		<img src="img/pexel.jpg" style="width: 100%;">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		</br>
		<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>

		</br>
		<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 recommend-news">
		<h4>Recommend</h4>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-3 atur-box ">
			<div class="card">
			  <img class="card-img-top photo_1" src="img/pexel2.jpg" alt="Card image cap">
			  <div class="card-block">
			    <h4 class="card-title">Harga Sepeda naik lagi di tahun ini</h4>
			    <p class="card-text">lorem ipsum doler sit amet ...</p>
			   
			  </div>
			</div>
		</div>
		<div class="col-md-3 atur-box ">
			<div class="card">
			  <img class="card-img-top photo_1" src="img/pexel4.jpg" alt="Card image cap">
			  <div class="card-block">
			    <h4 class="card-title">Belajar di kampus ga semuda di sekolah</h4>
			    <p class="card-text">lorem ipsum doler sit amet ...</p>
			   
			  </div>
			</div>
		</div>
		<div class="col-md-3 atur-box ">
			<div class="card">
			  <img class="card-img-top photo_1" src="img/pexel.jpg" alt="Card image cap">
			  <div class="card-block">
			    <h4 class="card-title">Harga Macbook sudah turun drastis</h4>
			    <p class="card-text">lorem ipsum doler sit amet ...</p>
			   
			  </div>
			</div>
		</div>
		<div class="col-md-3 atur-box ">
			<div class="card">
			  <img class="card-img-top photo_1" src="img/pexel2.jpg" alt="Card image cap">
			  <div class="card-block">
			    <h4 class="card-title">10 Tips menjaga gadgetmu awet</h4>
			    <p class="card-text">lorem ipsum doler sit amet ...</p>
			   
			  </div>
			</div>
		</div>
	</div>
</div>
<!---->

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