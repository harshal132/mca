<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about us.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/about.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- about section content -->
<div class="team" id="team">
<div class="about_section">
	<div class="container">
		<div class="col-md-6 about-left">
			<div class="col-md-6 cakeimg">
				<img src="images/veg1.jpg" alt="image" width="260" height="175"/>
				<img src="images/veg3.jpg" alt="image" width="260" height="175"/>
			</div>
			<div class="col-md-6 cakeimg cakeimg2">
				<img src="images/veg2.jpg" alt="image" width="260" height="175"/>
				<img src="images/veg4.jpg" alt="image" width="260" height="175"/>
			</div>
			<div class="clearfix"> </div>
		</div> 
		<div class="col-md-6 about_right">
			<h3>&nbsp;&nbsp;&nbsp;<span class="fa-inverse">Made for you with love</span></h3>
			
			<p class="fa-inverse">Our restaurant food is the best.We think about Quality of food.Create a new food dishes for the customer,so customer enjoy new food dishes. </p>
			
		</div> 
		<div class="clearfix"> </div>
	</div>
</div>
</div>
<!-- //about section content -->



<script type="text/javascript">
    $(window).load(function () {
        $("#flexiselDemo1").flexisel({
            visibleItems: 1,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 4000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 1
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 1
                }
            }
        });

    });
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>

</asp:Content>

