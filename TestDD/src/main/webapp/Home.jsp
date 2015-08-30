<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="Stylesheet" href="home.css" type="text/css" />
<script type="text/javascript">
$(document).ready(function(){ 

	var _scroll = true, _timer = false, _floatbox = $("#contact_form"), _floatbox_opener = $(".contact-opener") ;
	_floatbox_opener.click(function(){
		if (_floatbox.hasClass('visiable')){
            _floatbox.animate({"right":"-407px"}, {duration: 300}).removeClass('visiable');
        }else{
           _floatbox.animate({"right":"0px"},  {duration: 300}).addClass('visiable');
        }
	});

	$(window).scroll(function(){
		if(_scroll){
			_floatbox.animate({"top": "100px"},{duration: 300});
			_scroll = false;
		}
		if(_timer !== false){ clearTimeout(_timer); }           
			_timer = setTimeout(function(){_scroll = true; 
			_floatbox.animate({"top": "100px"},{easing: "linear"}, {duration: 500});}, 400); 
	});		
});

</script>

<script>
function updateFeedback(){

		if ($("#title").val() == "") {
			alert("Please enter the Title");
			return false;
		}else if ($("#moduleName").val() == "") {
			alert("Please select the Regarding");
			return false;
		} else if ($("#categaroy").val() == "") {
			alert("Please select the category");
			return false;
		} else if ($("#comments").val() == "") {
			alert("Please enter the Description");
			return false;
		}

		var data = {
			"title" : $("#title").val(),			
			"categaroy" : $("#categaroy").val(),
			"moduleName" : $( "#moduleName option:selected" ).text(),
			"comments" : $("#comments").val(),
			"isSensitive" : $('#checkbox').prop("checked"),
			"devGroupId" : $( "#moduleName option:selected" ).val(),
			"userMailId" : "rsnvinesh@gmail.com"			
		};

	$.ajax({
			url : "index.jsp?jsonStr=" + JSON.stringify(data),
			success : function(result) {
				$("#contact_results").show();
			}
		});
	}
	

</script>

</head>
<body onload="getOrg()">
	<div class="floating-form" id="contact_form">
		<div class="contact-opener">FEEDBACK</div>
		<div class="floating-form-heading">Please Contact Us</div>
		<div style="display:none" id="contact_results">Thank you for your feedback.</div>
		<div id="contact_body">
			<label><span>Title <span class="required">*</span></span> <input
				type="email" name="title" id="title" required="true"
				class="input-field"></label> 				
				<label for="subject"><span>Regarding<span
					class="required">*</span></span> <div id="selectVal" name="selectVal"></div></label>	
				<label for="subject"><span>Category<span
					class="required">*</span></span> <select   style='width:400px' name="categaroy" id="categaroy"  class='select-field' >
					<option value="Issue">Issue</option>
					<option value="Suggestion">Suggestion </option>
					<option value="Comments">Comments</option>
			</select> </label> 
			
			<label for="field5"><span>Message <span
					class="required">*</span></span> <textarea name="comments"
					name="comments" id="comments" style="height: 60px" class="textarea-field"
					required="true"></textarea> </label>
			
			<label for="field6"><input type="checkbox" id="" name="" /> <strong>Has Sensitive Info</strong></label>
					
					 <label> <span>&nbsp;</span><input
				type="submit" id="submit" value="Submit" onclick="updateFeedback()";></label>
		</div>
	</div>
	<table cellpadding="0" cellspacing="0" width="1000" align="center">
		<tr>
			<td valign="middle" height="100">
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td><a href="index.html"><span
								style="color: #FE980F; font-size: 20px; font-weight: bold">JIGARTHANDA ONLINE
									<span style="color: #333; font-size: 20px; font-weight: bold">E
										CART</span>
							</span></a></td>
						<td align="right">
							<div class="shop-menu">
								<ul class="nav navbar-nav">
									<li><a href="#"><i class="fa fa-user"></i> Account</a></li>
									<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
									<li><a href="checkout.html"><i
											class="fa fa-crosshairs"></i> Checkout</a></li>
									<li><a href="cart.html"><i class="fa fa-shopping-cart"></i>
											Cart</a></li>
									<li><a href="login.html"><i class="fa fa-lock"></i>
											Login</a></li>
								</ul>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="NavMenu">
					<ul>
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Shop</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</td>
		</tr>
		<tr>
			<td style="background: #006699"><div class="col-sm-6">
					<h1>
						<span>ONLINE</span> E CART
					</h1>
					<h2>Online Products</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
					<button type="button" class="btn btn-default get">Get it
						now</button>
				</div></td>
		</tr>
		<tr>
			<td valign="top" class="body_content">
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td valign="top">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd">
												<img src="http://ec1.ostkcdn.com/images/products/9459527/P16643136.jpg" alt="Beats Studio Over-Ear Headphones" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>									
    
											<h2>$156</h2>
											<p>Beats Studio Over-Ear Headphones</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/8962790/Apple-iPhone-5-EarBuds-Genuine-OEM-P16172822.jpg" alt="Beats Studio Over-Ear Headphones" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$256</h2>
											<p>Beats Studio Over-Ear Headphones</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/10056285/P17201009.jpg" alt="Behind the Neck Bluetooth Magnetic Earbud Headset" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$56</h2>
											<p>Behind the Neck Bluetooth Magnetic </p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
						</td>
						<td valign="top">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/9670269/P16850958.jpg" alt="Beats by Dre Studio Wireless Over-Ear Headphones"  border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$46</h2>
											<p>Beats by Dre Studio Wireless Over-Ear</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/4413307/MEElectronics-M6-Stylish-Sound-Isolating-Sports-Earphones-P12373658ab.jpg" alt="MEElectronics M6 Stylish Sound Isolating Sports Earphones" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>256</h2>
											<p>MEElectronics M6 Stylish Sound Isolating Sports Earphones</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/9775283/P16945289.jpg" alt="Insten Universal Car Steering Wheel Clip Mount Holder Cradle Stand for Apple iPhone 4/ 5/ 6, Samsung Galaxy S5/ S6, HTC One, GPS" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>86</h2>
											<p>Insten Universal Car Steering Wheel</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
						</td>
						<td valign="top">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img  src="http://ak1.ostkcdn.com/images/products/8687986/Samsung-Galaxy-Note-3-N9000-Battery-OEM-B800BU-A-P15941657.jpg" alt="Samsung Lithium Standard Battery OEM B800BU for Samsung Galaxy Note 3 N9000" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$20</h2>
											<p>Samsung Lithium Standard Battery </p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/9752250/P16924806.jpg" alt="Apple OEM White USB Travel Charger Adapter With 8-pin Lightning Cable MD818ZM/A For iPad/ iPhone 5/ 5C/ 5S/ 6/ 6+/ iPod Touch" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$19</h2>
											<p>Apple OEM White USB Travel Charger </p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/9999645/P17148874.jpg" alt="Beats by Dre Solo2 Wireless Over-ear Headphones"  border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$65</h2>
											<p>Beats by Dre Solo2 Wireless Over-ear</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
						</td>
						<td valign="top">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/4512145/P12455916.jpg" alt="INSTEN Universal 3.5mm In-ear Stereo Headset with Mic for Apple iPhone 4S/ 5S/ 6"  border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$48</h2>
											<p>INSTEN Universal 3.5mm In-ear Stereo Headset with Mic for Apple iPhone 4S/ 5S/ 6</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/etilize/images/250/1017320124.jpg" alt="Apple MB770G/B Earset" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$11</h2>
											<p>Apple MB770G/B Earset</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<div
												style="width: 214px; height: 218px; background: #ecedee; border: 1px solid #ddd"><img src="http://ak1.ostkcdn.com/images/products/P16785001a.jpg" alt="Beats by Dre Solo 2 On-ear Headphones" border="0" style="height: auto;width: auto;max-width: 211px;max-height: 300px;"></div>
											<h2>$08</h2>
											<p>Beats by Dre Solo 2 On-ear Headphones</p>
											<a href="#" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to wishlist</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>Add
													to compare</a></li>
										</ul>
									</div>
								</div>
							</div>
						</td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td><br /></td>
		</tr>
		<tr>
			<td valign="top" class="FooterBG" colspan="2">
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td>
							<div class="footermenu">
								<ul>
									<li><a href="#">About us</a></li>
									<li><a href="#">Services</a></li>
									<li><a href="#">Supports</a></li>
									<li><a href="#">Developments</a></li>
									<li><a href="#">Contact</a></li>
								</ul>
							</div>
						</td>
						<td align="right">
							<div class="copy_txt" style="padding-right: 10px;">
								Copyright &copy; 2015 Online E CART. All rights reserved.</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
<script>
function getOrg(){
	$.ajax({
		url : "index.jsp?type=module",
		success : function(result) {
			document.getElementById("selectVal").innerHTML="<select style='width:400px' id ='moduleName' class='select-field'>" + result + "</select>";
		}
	});
}
</script>


</html>
