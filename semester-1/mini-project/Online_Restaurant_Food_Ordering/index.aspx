<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <!-- welcome -->
<div class="welcome"> 
	<div class="container">
		<div class="col-md-6 welcome-w3lright">
			 <div class="video-grid-single-page-agileits">
				<div><img src="images/about.png" alt=""/> </div>
			</div>
		</div> 
		<div class="col-md-6 welcome_left">
			<h3 class="agileits-title">Welcome To Amkar FastFood</h3>
			<h4> Amkar FastFood takeout food order from  there restaurant through a web page </h4>
			  
		</div>
		<div class="clearfix"> </div>
	</div> 
</div>
<!-- //welcome -->

<!-- /about -->
	<div class="about">
		<div class="container">
			<div class="wthree_head_section">
				<h3 class="heading">Know More About Amkar FastFood</h3>
			</div>
			<div class="agile_wthree_inner_grids">
				<div class="col-md-6 about_agileinfo">
					<h4>Know about Pasta</h4>
					<p>Pasta is also prepared in light lunches, such as salads or large portion sizes for dinner.</p>
					<div class="mid-inner-info">
						<div class="col-md-6 mid-inner-sec one">
							<span class="fa fa-birthday-cake" aria-hidden="true"></span>
							<h5>Delicious Cakes</h5>
							<p>Cake is a form of sweet dessert that is typically baked. In its oldest forms, cakes were modifications of breads.</p>
							
						</div>
						<div class="col-md-6 mid-inner-sec">
							
							<h4>Indian cuisine</h4>
					<p>Gujarati Thali,Rajasthani Thali,Punjabi Thali also available in our restaurant .</p>
							
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-6 about_agileinfo"><div class="mid-inner-info">
						<div class="col-md-6 mid-inner-sec one">
							
							<h5>Manchow Soup</h5>
							<p>One of the best chinese dishes dishesdishes in our restaurant.</p>
							
						</div>
						<div class="col-md-6 mid-inner-sec">
							<span class="fa fa-spoon" aria-hidden="true"></span>
							<h5>Masala Dosa</h5>
							<p>All South Indian dishes are available in our restaurant .</p>
							
						</div>
						<div class="clearfix"></div>
					<h5>Chinese Noodles</h5>
					<p>meal should contain an equal division between fan, grains and starches, and t'sai, fruits, and vegetables. One of the grains they rely on to provide this harmonious dietary balance is noodles.</p>

					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<!--//about -->
	
<!-- Popular cakes -->
<div class="popular_cakes">
	<div class="container">
		<h3 class="heading">Most Popular Dishes</h3>
		<div class="cakes_grids">
			<div class="col-md-4">
			<div class="cakes_grid1">
				<img src="images/pizza3.jpg"  width="350" height="300"/>
				<h3>Pizza</h3>
				<p></p>
			</div>
			</div>
			<div class="col-md-4">
			<div class="cakes_grid1">
				<img src="images/manchurian.jpg" width="350" height="300"/>
				<h3>Manchurian Soup</h3>
				<p></p>
			</div>
			</div>
			<div class="col-md-4">
			<div class="cakes_grid1">
				<img src="images/noodles1.jpg" width="350" height="300"/>
				<h3>Noodles</h3>
				<p></p>
			</div>
			</div>
			<div class="clearfix"></div>
			<div class="cakes_bottom_grids">
				<div class="col-md-4">
				<div class="cakes_grid1">
					<img src="images/punjabi.jpg"  width="350" height="300"/>
					<h3>Punjabi Thali</h3>
					<p></p>
				</div>
				</div>
				<div class="col-md-4">
				<div class="cakes_grid1">
					<img src="images/c5.jpg" width="350" height="300"/>
					<h3>Chocolate Cake</h3>
					<p></p>
				</div>
				</div>
				<div class="col-md-4">
				<div class="cakes_grid1">
					<img src="images/pasta.jpg" width="350" height="300" />
					<h3>Pasta</h3>
					<p></p>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div> 
</div>
<!-- //Popular cakes -->


<!-- team 
	<div class="team" id="team">
	   <div class="agile_dot_info two">
		<div class="container">
		<h3 class="heading">Our Staff</h3>
			<div class="agileits_team_grids">
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/chef1.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Jane Robert</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/chef2.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>James Doe</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/chef3.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Laura Olivia</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/chef4.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>William James</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!-- //team -->

<!-- testimonials 
	<div class="testimonials">
		<div class="container">
		<h3 class="heading">Our Customer reviews</h3>
			<div class="testimonials-grids">
				<div class="wmuSlider example1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonials-grid">
									<div class="testimonials-grid-left">
										<img src="images/t1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right">
										<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
											praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
											excepturi sint occaecati cupiditate non provident. Duis maximus, velit posuere rutrum tempus, nibh ligula semper felis.</p>
										<h4>Richard Doe</h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonials-grid">
									<div class="testimonials-grid-left">
										<img src="images/t3.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right">
										<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
											praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
											excepturi sint occaecati cupiditate non provident. Duis maximus, velit posuere rutrum tempus, nibh ligula semper felis.</p>
										<h4>Rita James</h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonials-grid">
									<div class="testimonials-grid-left">
										<img src="images/t2.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right">
										<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
											praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
											excepturi sint occaecati cupiditate non provident. Duis maximus, velit posuere rutrum tempus, nibh ligula semper felis.</p>
										<h4>Crisp Ali</h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonials-grid">
									<div class="testimonials-grid-left">
										<img src="images/t1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right">
										<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
											praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
											excepturi sint occaecati cupiditate non provident. Duis maximus, velit posuere rutrum tempus, nibh ligula semper felis</p>
										<h4>Laura roy</h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //testimonials -->

<!-- subscribe 
<div class="subscribe">
	<div class="container">
		<h3 class="heading">Subscribe To Get Notifications</h3>
		<div class="subscribe-grid">
			<form action="#" method="post">
				<input type="email" placeholder="Enter Your Email" name="email" required=""/>
				<button class="btn1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
			</form>
		</div>
	</div>
</div>
<!-- //subscribe -->


</asp:Content>

