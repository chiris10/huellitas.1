<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="04_Adopt.aspx.cs" Inherits="Huellitas1._04_Adopt_aspx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet Sitting - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">


    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body> 
	  <form runat="server" >

    <div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
						<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +503 7053 1387</a> 
                          <a href="#"><span class="fa fa-paper-plane mr-1"></span> huellitas.adopt@gmail.com</a>
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">

					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    	<a class="navbar-brand" href="Index.aspx"><span class="flaticon-pawprint-1 mr-2"></span>Huellitas</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item "><a href="Index.aspx" class="nav-link">Home</a></li>
	        	<li class="nav-item active"><a href="04_Adopt.aspx" class="nav-link">Adopt</a></li>
	        	<li class="nav-item"><a href="05_GivingAdoption.aspx" class="nav-link">Giving Adoption</a></li>
	        	<li class="nav-item"><a href="06_Shop.aspx" class="nav-link">Shop</a></li>
	            <li class="nav-item"><a href="07_Team.aspx" class="nav-link">Team</a></li>
	           <li class="nav-item"><a href="08_Contact.aspx" class="nav-link">Contact</a></li>
	        </ul>


			                      <div class="form-group">
                        <asp:DropDownList ID="Gender"
                            AutoPostBack="True"
                            runat="server" OnSelectedIndexChanged="Gender_SelectedIndexChanged">
 <asp:ListItem Selected="True" Value="Select Gender">  English </asp:ListItem>
   <asp:ListItem Value="Masculino"> Spanish </asp:ListItem>
  </asp:DropDownList>
</div>
            <div class="form-group">&nbsp;</div>


	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="Index.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Adopt<i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">Adopt a Pet</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen/about-1.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Tini </h3>
							<span class="position mb-2"></span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
	              
	              </ul>
              </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen/image_3.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3> Luz </h3>
							<span class="position mb-2"></span>
							<div class="faded">
								<p></p>
							
              </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen1/perro5.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3> Smith</h3>
							<span class="position mb-2"> </span>
							<div class="faded">
								<p>.</p>
								
              </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen1/perro2.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Alicia </h3>
							<span class="position mb-2"></span>
							<div class="faded">
								<p></p>
							
              </div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen1/perro1.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>river</h3>
							<span class="position mb-2"> </span>
							<div class="faded">
								<p></p>
							
              </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen1/perro3.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Parker</h3>
							<span class="position mb-2"></span>
							<div class="faded">
								<p></p>
								
              </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen1/perro4.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">

							<h3> Copitos </h3>

						
							<span class="position mb-2"></span>
							<div class="faded">
								<p></p>
								
              </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(imagen1/perro7.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Fred </h3>
							<span class="position mb-2"></span>
							<div class="faded">
								<p></p>
							
              </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

 <footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
				<%--<h2 class="footer-heading">Huellitas</h2>--%>
<%--				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
				<ul class="ftco-footer-social p-0">
      <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
      <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
      <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
    </ul>--%>
			</div>
		<%--	<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
				<h2 class="footer-heading">Latest News</h2>
				<div class="block-21 mb-4 d-flex">
      <a class="img mr-4 rounded" style="background-image: url(images/image_1.jpg);"></a>
      <div class="text">
        <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
        <div class="meta">
          <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
          <div><a href="#"><span class="icon-person"></span> Admin</a></div>
          <div><a href="#"><span class="icon-chat"></span> 19</a></div>
        </div>--%>
      </div>
    </div>
 <%--   <div class="block-21 mb-4 d-flex">
      <a class="img mr-4 rounded" style="background-image: url(images/image_2.jpg);"></a>
      <div class="text">
        <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
        <div class="meta">
          <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
          <div><a href="#"><span class="icon-person"></span> Admin</a></div>
          <div><a href="#"><span class="icon-chat"></span> 19</a></div>
        </div>--%>
    <%--  </div>
    </div>
			</div>
			<div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
				<h2 class="footer-heading">Quick Links</h2>
				<ul class="list-unstyled">
      <li><a href="#" class="py-2 d-block">Home</a></li>
      <li><a href="#" class="py-2 d-block">About</a></li>
      <li><a href="#" class="py-2 d-block">Services</a></li>
      <li><a href="#" class="py-2 d-block">Works</a></li>
      <li><a href="#" class="py-2 d-block">Blog</a></li>
      <li><a href="#" class="py-2 d-block">Contact</a></li>
    </ul>--%>
			<%--</div>--%>
			<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
				<h2 class="footer-heading">Huellitas</h2>
				<div class="block-23 mb-3">
      <ul>
        <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+503 7053 1387</span></a></li>
        <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">	huellitas.adopt@gmail.com</span></a></li>
      </ul>
    </div>
			</div>
		</div>
		<div class="row mt-5">
  <div class="col-md-12 text-center">

            <%--<p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>--%>
          </div>
        </div>
			</div>
		</footer>

    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>


    </form>
  </body>
</html>
