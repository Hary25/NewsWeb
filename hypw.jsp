
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
            <li><a href="profile.jsp">PROFILE</a></li>
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
    <div class="col-md-6 atur-box ">
      <img src="img/pexel.jpg" class="photo_1">
      <h3 class="text-image">Menjadi creativitas dengan</br>kebiasaan ini</h3>
    </div>
    <div class="col-md-6">
      <div class="col-md-6 padding-box atur-box">
        <img src="img/pexel.jpg" class="photo_1">
        <h4 class="text-image2">Harga Sepeda</br>naik lagi ?</h4>
        <img src="img/pexel2.jpg" class="photo_1">
        <h4 class="text-image">Belajar di kampus gak</br>semudah di sekolah</h4>
      </div>
      <div class="col-md-6 padding-box">
        <img src="img/pexel2.jpg" class="photo_1">
        <h4 class="text-image2">Harga Macbook</br>sudah turun!</h4>
        <img src="img/pexel4.jpg" class="photo_1">
        <h4 class="text-image">10 Tips menjaga</br>gadget kamu awet</h4>
      </div>
    </div>
  </div>
</div>

<div class="container space">
  <div class="row">
    <div class="col-md-5 line-home">
    </div>
    <div class="col-md-2">
      <h3 style="text-align: center;">Trending</h3>
    </div>
    <div class="col-md-5 line-home">
    </div>
  </div>
</div>


<div class="container">
  <div class="row">
    <div class="col-md-3 atur-box ">
      <img src="img/pexel.jpg" class="photo_1">
      <h4 class="text-image">Menjadi creativitas dengan</br>kebiasaan ini</h4>
    </div>
    <div class="col-md-3 atur-box ">
      <img src="img/pexel2.jpg" class="photo_1">
      <h4 class="text-image">Menjadi creativitas dengan</br>kebiasaan ini</h4>
    </div>
    <div class="col-md-3 atur-box ">
      <img src="img/pexel4.jpg" class="photo_1">
      <h4 class="text-image">Menjadi creativitas dengan</br>kebiasaan ini</h4>
    </div>
    <div class="col-md-3 atur-box ">
      <img src="img/pexel.jpg" class="photo_1">
      <h4 class="text-image">Menjadi creativitas dengan</br>kebiasaan ini</h4>
    </div>
  </div>
</div>


<div class="container space">
  <div class="row">
    <div class="col-md-5 line-home">
    </div>
    <div class="col-md-2">
      <h3 style="text-align: center;">New</h3>
    </div>
    <div class="col-md-5 line-home">
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
<div class="space">  </div>
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


<div class="container  space">
  <div class="row">
    <div clas="col-md-12">
        <h3 style="text-align: center;">Category</h3>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-6 atur-box ">
      <img src="img/life.jpeg" class="photo_1">
      <h1 class="text-category2">LIFE</h1>
      <img src="img/sport.jpg" style="margin-top: 30px;" class="photo_1">
      <h1 class="text-category">SPORT</h1>
    </div>
    <div class="col-md-6 atur-box ">
      <img src="img/hype.jpeg" class="photo_1">
      <h1 class="text-category2">HYPE</h1>
      <img src="img/tech.jpeg" style="margin-top: 30px;" class="photo_1">
      <h1 class="text-category">TECH</h1>
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