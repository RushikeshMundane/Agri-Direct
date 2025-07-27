<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Online Store</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Bootstrap css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Main css -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- pop-up-box -->
	<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
	<!-- menu style -->
	<!-- //Custom-Files -->

	<!-- web fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //web fonts -->

</head>

<body>
<form id="form1" runat="server" >

	<!-- top-header -->
	<div class="agile-main-top">
		<div class="container-fluid">
			<div class="row main-top-w3l py-2">
				<div class="col-lg-4 header-most-top">
					<p class="text-white text-lg-left text-center">Great stores. Great choices.
						<i class="fas fa-shopping-cart ml-1"></i>
					</p>
				</div>
				<div class="col-lg-8 header-right mt-lg-0 mt-2">
					<!-- header lists -->
					<ul>
						<%--<li class="text-center border-right text-white">
							<a href="#" data-toggle="modal" data-target="#exampleModal" class="text-white">
								<i class="fas fa-truck mr-2"></i>Track Order</a>
						</li>--%>
						<%--<li class="text-center border-right text-white">
							<i class="fas fa-phone mr-2"></i> 9764782016
						</li>--%>
						<li class="text-center border-right text-white">
							<a href="#" data-toggle="modal" data-target="#exampleModal" class="text-white">
								<i class="fas fa-sign-in-alt mr-2"></i> Log In </a>
						</li>
                       
						<li class="text-center text-white">
							<a href="#" data-toggle="modal" data-target="#exampleModal2" class="text-white">
								<i class="fas fa-sign-out-alt mr-2"></i>Register </a>
						</li>
                         <li class="text-center border-right text-white">
							<a href="#"  data-toggle="modal" data-target="#Div1" class="text-white">
								<i class="fas fa-sign-in-alt mr-2"></i> Admin In </a>
						</li>
						<li>
    <a href="http://127.0.0.1:5000/" target="_blank" rel="noopener noreferrer" 
   style="background-color: #0c9578; color: white;  border: none; font-size: 16px; cursor: pointer; border-radius: 5px; text-decoration: none; display: inline-block;">
    Detect Disease
</a>
	</li>
						<li>
							<a href="WeatherInfo1.aspx" target="_blank" rel="noopener noreferrer" 
   style="background-color: #0c9578; color: white;  border: none; font-size: 16px; cursor: pointer; border-radius: 5px; text-decoration: none; display: inline-block;">
    weather forecast
</a>
						</li>
						
					</ul>
					<!-- //header lists -->
				</div>
			</div>
		</div>
	</div>

	<!-- log in -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center">Log In</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="#" method="post">
						<div class="form-group">
							<label class="col-form-label">Username</label>
							<input type="text" class="form-control" placeholder="Enter Email ID" name="Name" required="">
						</div>
						<div class="form-group">
							<label class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder=" " name="Password" required="">
						</div>
						<div class="right-w3l">
							<%--<input type="submit" class="form-control" value="Log in">--%>
                            <asp:Button ID="Button2" runat="server" class="form-control" Text="Log In" onclick="Button2_Click" />
						</div>
						<div class="sub-w3l">
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="customControlAutosizing">
								<label class="custom-control-label" for="customControlAutosizing">Remember me?</label>
							</div>
						</div>
						<p class="text-center dont-do mt-3">Don't have an account?
							<a href="#" data-toggle="modal" data-target="#exampleModal2">
								Register Now</a>
						</p>
					</form>
				</div>
			</div>
		</div>
		
	</div>
    <!--Admin-->
    <div class="modal fade" id="Div1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center">Log In</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="Adminlogin.aspx" method="get">
						<div class="form-group">
							<label class="col-form-label">Username</label>
							<input type="text" class="form-control" placeholder=" " name="Name" required="">
						</div>
						<div class="form-group">
							<label class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder=" " name="Password" required="">
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Log in">
                           <%-- <asp:Button ID="Button1" class="form-control" runat="server" Text="Button" onclick="Button2_Click" />--%>
						</div>
					<%--	<div class="sub-w3l">
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="Checkbox1">
								<label class="custom-control-label" for="customControlAutosizing">Remember me?</label>
							</div>
						</div>
						<p class="text-center dont-do mt-3">Don't have an account?
							<a href="#" data-toggle="modal" data-target="#exampleModal2">
								Register Now</a>
						</p>--%>
					</form>
				</div>
			</div>
		</div>
	</div>
    
	<!-- register -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Register</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="Registration.aspx" method="get">
                    
						<div class="form-group">
							<label class="col-form-label">Your Name</label>
							<input type="text" class="form-control" placeholder=" " name="Name" required="">
                            <%--<asp:TextBox ID="txtSagar" runat="server" class="form-control"></asp:TextBox>--%>
						</div>
						<div class="form-group">
							<label class="col-form-label">Email</label>
							<input type="email" class="form-control" placeholder=" " name="Email" required="">
                           <%-- <asp:TextBox ID="txtemail" runat="server" class="form-control" ></asp:TextBox> --%>
						</div>
						<div class="form-group">
							<label class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder=" " name="Password" id="password1" required="">
                            <%--<asp:TextBox ID="txtpwd" runat="server" class="form-control" TextMode="Password"></asp:TextBox> --%>
						</div>
						<div class="form-group">
							<label class="col-form-label">Confirm Password</label>
							<input type="password" class="form-control" placeholder=" " name="Confirm Password" id="password2" required="">
                            <%--<asp:TextBox ID="txtcpwd" runat="server" class="form-control" TextMode="Password"></asp:TextBox>--%>
						</div>
						<div class="right-w3l">
							<input type="submit" runat="server" class="form-control" value="Register" onserverclick="Button2_Click"/>
                           <%-- <asp:Button ID="btnregister" runat="server" Text="Register" class="form-control" OnClick="Button2_Click" />--%>
                            
						</div>
						<div class="sub-w3l">
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="customControlAutosizing2">
								<label class="custom-control-label" for="customControlAutosizing2">I Accept to the Terms & Conditions</label>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- //top-header -->

	<!-- header-bottom-->
	<div class="header-bot">
    <div>
		<div class="container" >
			<div class="row header-bot_inner_wthreeinfo_header_mid">
				<!-- logo -->
				<div class="col-md-3 logo_agile">
					<h1 class="text-center">
						<a href="#" class="font-weight-bold font-italic">
							<img src="images/logo2.png" alt=" " class="img-fluid">Online Agri
						</a>
					</h1>
				</div>
				<!-- //logo -->
				<!-- header-bot -->
				<div class="col-md-9 header mt-4 mb-md-0 mb-4">
					<div class="row">
						<!-- search -->
						<div class="col-10 agileits_search">
							<form class="form-group" action="View_product.aspx" method="get">
								<input class="form-control mr-sm-2" type="search" placeholder="Search" name="txtsearch"
                                    aria-label="Search" required="" style="float: left">
								<button class="btn my-2 my-sm-0" type="submit">Search</button>
                          
                                    </form>
</div>
							
						
						<!-- //search -->
						<!-- cart details -->
						<div class="col-2 top_nav_right text-center mt-sm-0 mt-2">
							<div class="wthreecartaits wthreecartaits2 cart cart box_1">
								<form action="#" method="post" class="last">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="display" value="1">
								<%--	<button class="btn w3view-cart" type="submit" name="submit" value="">
										<i class="fas fa-cart-arrow-down"></i>
									</button>--%>
								</form>
							</div>
						</div>
						<!-- //cart details -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- shop locator (popup) -->
	<!-- //header-bottom -->
	<!-- navigation -->
	<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<%--<div class="agileits-navi_search">
					<form action="#" method="post">
						<select id="agileinfo-nav_search" name="agileinfo_search" class="border" required="">
							<option value="">All Categories</option>
							<option value="Televisions">Televisions</option>
							<option value="Headphones">Headphones</option>
							<option value="Computers">Computers</option>
							<option value="Appliances">Appliances</option>
							<option value="Mobiles">Mobiles</option>
							<option value="Fruits &amp; Vegetables">Tv &amp; Video</option>
							<option value="iPad & Tablets">iPad & Tablets</option>
							<option value="Cameras & Camcorders">Cameras & Camcorders</option>
							<option value="Home Audio & Theater">Home Audio & Theater</option>
						</select>
					</form>
				</div>--%>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						<li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="Default.aspx">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
                        
                      
                        <%--<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="NewArrivals.aspx">New Arrivals</a>
						</li>--%>
						<%--<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Electronics
							</a>
							<div class="dropdown-menu">
								<div class="agile_inner_drop_nav_info p-4">
									<h5 class="mb-3">Mobiles, Computers</h5>
									<div class="row">
										<div class="col-sm-6 multi-gd-img">
											<ul class="multi-column-dropdown">
												<li>
													<a href="#">All Mobile Phones</a>
												</li>
												<li>
													<a href="#">All Mobile Accessories</a>
												</li>
												<li>
													<a href="#">Cases & Covers</a>
												</li>
												<li>
													<a href="#">Screen Protectors</a>
												</li>
												<li>
													<a href="#">Power Banks</a>
												</li>
												<li>
													<a href="#">All Certified Refurbished</a>
												</li>
												<li>
													<a href="#">Tablets</a>
												</li>
												<li>
													<a href="#">Wearable Devices</a>
												</li>
												<li>
													<a href="#">Smart Home</a>
												</li>
												
											</ul>
										</div>
										<div class="col-sm-6 multi-gd-img">
											<ul class="multi-column-dropdown">
												<li>
													<a href="#">Laptops</a>
												</li>
												<li>
													<a href="#">Drives & Storage</a>
												</li>
												<li>
													<a href="#">Printers & Ink</a>
												</li>
												<li>
													<a href="#">Networking Devices</a>
												</li>
												<li>
													<a href="#">Computer Accessories</a>
												</li>
												<li>
													<a href="#">Game Zone</a>
												</li>
												<li>
													<a href="#">Software</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</li>--%>
						<%--<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Appliances
							</a>
							<div class="dropdown-menu">
								<div class="agile_inner_drop_nav_info p-4">
									<h5 class="mb-3">TV, Appliances, Electronics</h5>
									<div class="row">
										<div class="col-sm-6 multi-gd-img">
											<ul class="multi-column-dropdown">
													<li>
													<a href="#">Televisions</a>
												</li>
												<li>
													<a href="#">Home Entertainment Systems</a>
												</li>
												<li>
													<a href="#">Headphones</a>
												</li>
												<li>
													<a href="#">Speakers</a>
												</li>
												<li>
													<a href="#">MP3, Media Players & Accessories</a>
												</li>
												<li>
													<a href="#">Audio & Video Accessories</a>
												</li>
												<li>
													<a href="#">Cameras</a>
												</li>
												<li>
													<a href="#">DSLR Cameras</a>
												</li>
												<li>
													<a href="#">Camera Accessories</a>
												</li>
												
											</ul>
										</div>
										<div class="col-sm-6 multi-gd-img">
											<ul class="multi-column-dropdown">
												<li>
													<a href="#">Musical Instruments</a>
												</li>
												<li>
													<a href="#">Gaming Consoles</a>
												</li>
												<li>
													<a href="#">All Electronics</a>
												</li>
												<li>
													<a href="#">Air Conditioners</a>
												</li>
												<li>
													<a href="#">Refrigerators</a>
												</li>
												<li>
													<a href="#">Washing Machines</a>
												</li>
												<li>
													<a href="#">Kitchen & Home Appliances</a>
												</li>
												<li>
													<a href="#">Heating & Cooling Appliances</a>
												</li>
												<li>
													<a href="#">All Appliances</a>
												</li>

											</ul>
										</div>
									</div>
								</div>
							</div>
						</li>--%>
						<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="AboutUs.aspx">About Us</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="Contact.aspx">Contact Us</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->

	<!-- banner -->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<!-- Indicators-->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item item1 active">
				<div class="container">
					<div class="w3l-space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
						<%--	<p>Get flat
								<span>10%</span> Cashback</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">The
								<span>Big</span>
								Sale
							</h3>--%>
                            <br />
                            <br />
                            <center><a class="button2" href="View_Shop.aspx">View Shops </a></center>
							
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item2">
				<div class="container">
					<div class="w3l-space-banner">
								<div class="carousel-caption p-lg-5 p-sm-4 p-3">
						<%--	<p>Get flat
								<span>10%</span> Cashback</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">The
								<span>Big</span>
								Sale
							</h3>--%>
                            <br />
                            <br />
                            <center><a class="button2" href="View_Shop.aspx">View Shops</a></center>
							
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item3">
				<div class="container">
					<div class="w3l-space-banner">
								<div class="carousel-caption p-lg-5 p-sm-4 p-3">
						<%--	<p>Get flat
								<span>10%</span> Cashback</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">The
								<span>Big</span>
								Sale
							</h3>--%>
                            <br />
                            <br />
                            <center><a class="button2" href="View_Shop.aspx">View Shops</a></center>
							
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item4">
				<div class="container">
					<div class="w3l-space-banner">
								<div class="carousel-caption p-lg-5 p-sm-4 p-3">
						<%--	<p>Get flat
								<span>10%</span> Cashback</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">The
								<span>Big</span>
								Sale
							</h3>--%>
                            <br />
                            <br />
                            <center><a class="button2" href="View_Shop.aspx">View Shops </a></center>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- //banner -->

	<!-- top Products -->
	
	<!-- //top products -->



	<!-- footer -->
	<footer>
		<div class="footer-top-first">
			
		</div>
		<!-- footer third section -->
	
		<!-- //footer third section -->

		<!-- footer fourth section -->
		
		<!-- //footer fourth section (text) -->
	</footer>
	<!-- //footer -->
	<!-- copyright -->
	<div class="copy-right py-3">
		<div class="container">
			<p class="text-center text-white">© 2021 Online Store. All rights reserved | Design by
				<a href="#">Online Agri Team</a>
			</p>
		</div>
	</div>


	<!-- //copyright -->
		     <!-- CHAT BAR BLOCK -->
    <div class="wrap" style="position: fixed; bottom: 20px; right: 20px; z-index: 1000;">
  <a class="button" href="./chatbot1/chatbot.html" style="
    width: 80px; height: 80px; display: inline-flex; font-family: 'Nunito', sans-serif; font-size: 16px;
    align-items: center; justify-content: center; text-transform: uppercase; text-align: center;
    letter-spacing: 1.3px; font-weight: 700; color: #313133; background: linear-gradient(90deg, rgba(129,230,217,1) 0%, rgba(79,209,197,1) 100%);
    border: none; border-radius: 50%; box-shadow: 12px 12px 24px rgba(79,209,197,.64);
    transition: all 0.3s ease-in-out; cursor: pointer; outline: none; position: relative; padding: 10px;"
    onmouseover="this.style.transform='translateY(-6px)'; this.querySelector('.glow').style.opacity='1'; this.querySelector('.pulse').style.display='none';"
    onmouseout="this.style.transform='translateY(0)'; this.querySelector('.glow').style.opacity='0'; this.querySelector('.pulse').style.display='block';">
    
    Chat

    <span class="glow" style="
      content: ''; border-radius: 50%; width: calc(80px + 12px); height: calc(80px + 12px);
      border: 6px solid #00FFCB; box-shadow: 0 0 60px rgba(0,255,203,.64);
      position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);
      opacity: 0; transition: all .3s ease-in-out;">
    </span>

    <span class="pulse" style="
      content: ''; width: 30px; height: 30px; border-radius: 50%; border: 6px solid #00FFCB;
      position: absolute; z-index: -1; top: 50%; left: 50%; transform: translate(-50%, -50%);
      animation: ring 1.5s infinite;">
    </span>
  </a>
</div>

<style>
@keyframes ring {
  0% {
    width: 30px; height: 30px; opacity: 1;
  }
  100% {
    width: 150px; height: 150px; opacity: 0;
  }
}
</style>

      
      
      <!-- FontAwesome for the chat icon -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
      
      
      <style>
      @keyframes ring {
        0% {
          width: 30px; height: 30px; opacity: 1;
        }
        100% {
          width: 150px; height: 150px; opacity: 0;
        }
      }
      </style>
      
    

    <!-- CHAT BAR BLOCK END -->


	<!-- js-files -->
	<!-- jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //jquery -->

	<!-- nav smooth scroll -->
	<script>
	    $(document).ready(function () {
	        $(".dropdown").hover(
				function () {
				    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
				    $(this).toggleClass('open');
				},
				function () {
				    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
				    $(this).toggleClass('open');
				}
			);
	    });
	</script>
	<!-- //nav smooth scroll -->

	<!-- popup modal (for location)-->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
	    $(document).ready(function () {
	        $('.popup-with-zoom-anim').magnificPopup({
	            type: 'inline',
	            fixedContentPos: false,
	            fixedBgPos: true,
	            overflowY: 'auto',
	            closeBtnInside: true,
	            preloader: false,
	            midClick: true,
	            removalDelay: 300,
	            mainClass: 'my-mfp-zoom-in'
	        });

	    });
	</script>
	<!-- //popup modal (for location)-->

	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
	    paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

	    paypals.minicarts.cart.on('checkout', function (evt) {
	        var items = this.items(),
				len = items.length,
				total = 0,
				i;

	        // Count the number of each item in the cart
	        for (i = 0; i < len; i++) {
	            total += items[i].get('quantity');
	        }

	        if (total < 3) {
	            alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
	            evt.preventDefault();
	        }
	    });
	</script>
	<!-- //cart-js -->

	<!-- password-script -->
	<script>
	    window.onload = function () {
	        document.getElementById("password1").onchange = validatePassword;
	        document.getElementById("password2").onchange = validatePassword;
	    }

	    function validatePassword() {
	        var pass2 = document.getElementById("password2").value;
	        var pass1 = document.getElementById("password1").value;
	        if (pass1 != pass2)
	            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
	        else
	            document.getElementById("password2").setCustomValidity('');
	        //empty string means no validation error
	    }
	</script>
	<!-- //password-script -->
	
	<!-- scroll seller -->
	<script src="js/scroll.js"></script>
	<!-- //scroll seller -->

	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();

	            $('html,body').animate({
	                scrollTop: $(this.hash).offset().top
	            }, 1000);
	        });
	    });
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<script>
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */
	        $().UItoTop({
	            easingType: 'easeOutQuart'
	        });

	    });
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->
    </form>
</body>

</html>
