<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>DoIt</title>
<link rel="icon" href="${path}/resources/img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="${path}/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${path}/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${path}/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${path}/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${path}/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${path}/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="stylesheet" href="${path}/resources/css/post/poststyle.css" type="text/css"/>
</head>
<body>
<!--================ Start Header Menu Area =================-->
	<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="../main/main.do">DoIt<%-- <img src="${path}/resources/img/logo.png" alt=""> --%></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="../gym/gym_list.do">Gym</a></li>
              
              <li class="nav-item submenu dropdown">
                <a href="../store/list.do" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Shop</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
                  <li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
                  <li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
                </ul>
							</li>
              
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Post</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="../post/forum.do">Forum</a></li>
                  <li class="nav-item"><a class="nav-link" href="../post/blog.do">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="../post/news.do">News</a></li>
                  <li class="nav-item"><a class="nav-link" href="../post/qna.do">QnA</a></li>
                  
                </ul>
							</li>
							
							<li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Pages</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="../member/login.do">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="register.html">Register</a></li>
                  <li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
                </ul>
              </li>
              
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
            </ul>

            <ul class="nav-shop">
              <li class="nav-item"><button><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button> </li>
              <li class="nav-item"><a class="button button-header" href="#">Buy Now</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
	<!--================ End Header Menu Area =================-->
</body>
</html>