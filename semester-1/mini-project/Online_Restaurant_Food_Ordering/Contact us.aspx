<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact us.aspx.cs" Inherits="Contact_us"  enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
		
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap css -->
<link href="css/contact.css" rel="stylesheet" type="text/css" media="all" /><!-- contact css -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Contact -->
	<div class="contact-section" id="contact">
		<div class="container">
			<h3 class="heading">Contact Us</h3>
			<div class="col-md-4 address-left">
				<div class="address-grid">
					<h4>Contact Info</h4>
					<div class="address-grids">
						<span class="fa fa-volume-control-phone" aria-hidden="true"></span>
						<div class="contact-right">
							<p>Telephone </p>
						</div>
						<div class="clearfix"> &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="White" Text="8976120337"></asp:Label>
                           
                        </div>
					</div>
					<div class="address-grids">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
						<div class="contact-right" style="color:white;">
							<p>Mail </p>Amkar123@gmail.com
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-grids">
						<span class="fa fa-map-marker" aria-hidden="true"></span>
						<div class="contact-right">
							<p>Location</p><span>Mumbai Malad(E)</span>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-8 map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4023.1418325397585!2d72.85559224190057!3d19.186174261805693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b7049ec966a5%3A0xcfbb5c6c6ba30740!2sShah+Housing+Society%2C+Dhanji+Wadi%2C+Kasam+Baug%2C+Malad+East%2C+Mumbai%2C+Maharashtra+400097!5e0!3m2!1sen!2sin!4v1524409944641" width="600" height="80" frameborder="0" style="border:0" allowfullscreen></iframe>
                <!-- <iframe src="https://www.google.co.in/maps/place/Malad,+Reserve+Bank+of+India+Staff+Quarters,+Raheja+Twp,+Malad+East,+Mumbai,+Maharashtra+400097/@19.180237,72.8554149,15z/data=!4m13!1m7!3m6!1s0x3be7b701648ae49f:0x5f26aa1cd1a28d4c!2sMalad,+Reserve+Bank+of+India+Staff+Quarters,+Raheja+Twp,+Malad+East,+Mumbai,+Maharashtra+400097!3b1!8m2!3d19.180237!4d72.8554149!3m4!1s0x3be7b701648ae49f:0x5f26aa1cd1a28d4c!8m2!3d19.180237!4d72.8554149" ></iframe> -->
				
			</div>
			<div class="clearfix"> </div>
			<div class="mail_grid_w3l">
				<form action="#" method="post">
					<div class="col-md-6 contact_left_grid">

						<div class="contact-fields-w3ls">
                            <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Name" ControlToValidate="name"></asp:RequiredFieldValidator>
          &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Name" ControlToValidate="name" ValidationExpression="^[a-zA-z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
						
                           </div>

                        		<div class="contact-fields-w3ls">
							<asp:TextBox ID="number" runat="server" placeholder="Number"></asp:TextBox>   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Number" ControlToValidate="number"></asp:RequiredFieldValidator>
          &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
              runat="server" ErrorMessage="Invalid Number" 
              ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" 
              ControlToValidate="number"></asp:RegularExpressionValidator>
						
						      </div>

                        <div class="contact-fields-w3ls">
							<asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="email"></asp:RequiredFieldValidator>
          &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
              runat="server" ErrorMessage="Invalid Email" 
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
              ControlToValidate="email"></asp:RegularExpressionValidator>
						</div>

						<div class="contact-fields-w3ls">
							<asp:TextBox ID="subject" runat="server" placeholder="Subject"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Subject" ControlToValidate="subject"></asp:RequiredFieldValidator>
						</div>

                        </div>
                    <div class="col-md-6 contact_rightt_grid">
						<div class="contact-fields-w3ls">
							<asp:TextBox ID="message" runat="server" placeholder="Message" TextMode="MultiLine" style="height:241.5px"></asp:TextBox>
                            
						</div>
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
					</div>
                    <div class="clearfix"> </div>
				</form>
                </div>
		</div>
	</div>
<!--// Contact -->



<!-- Supportive js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //Supportive js -->
<script type="text/javascript" src="js/bootstrap.js"></script><!-- bootstrap js file -->

<!-- smooth scrolling js -->
<script src="js/SmoothScroll.min.js"></script>
<!-- smooth scrolling js -->

<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>

	<!-- here starts scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
	<!-- //here ends scrolling icon -->

<!-- move to top-js-files -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
<!-- //move to top-js-files -->
</asp:Content>

