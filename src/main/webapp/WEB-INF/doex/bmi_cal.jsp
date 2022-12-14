<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Category</title>
<link rel="icon" href="img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="../resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="../resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="../resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="../resources/vendors/linericon/style.css">
<link rel="stylesheet" href="../resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="../resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="../resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="../resources/vendors/nouislider/nouislider.min.css">

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

 <link rel="stylesheet" href="../resources/css/style.css" >   
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 -->
<style type="text/css">
 .container{
  
   text-align: center;
}
.row{
   margin: 0px auto;
   width:100%;
   text-align:center;
} 
.text-center{
	text-align: center;
}

.msgbox{
	padding:20px;
}  
  
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- <link type="text/css" href="https://health.seoulmc.or.kr/css/default.css" rel="stylesheet" />
<link type="text/css" href="https://health.seoulmc.or.kr/css/BITCommon.css" rel="stylesheet" />
<link type="text/css" href="https://health.seoulmc.or.kr/css/jquery.fileupload.css" rel="stylesheet" />
<link type="text/css" href="https://health.seoulmc.or.kr/css/jquery.fileupload-ui.css" rel="stylesheet" />
<link type="text/css" href="https://health.seoulmc.or.kr/css/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" /> -->

<script  type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</head>
<body>
<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Exercise</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Doit!</a></li>
              <li class="breadcrumb-item active" aria-current="page">BMI Calculate</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>

<div class="container">
	
	<div class="pop-body">
	<br>
	<h2><b>?????? ???????????????(BMI)</b></h2>
		<div class="message-box" id="msgbox">
		<h6>
			<span>?????????????????? ????????? ?????????(kg)??? ?????? ??????(m)?????? ?????? ????????????.<br />
			18.5 ??????             : ?????????<br />
			18.5 ?????? 23 ?????? : ??????<br />
			23 ?????? 25??????      : ?????????<br />
			25 ??????                  : ??????<br />
			</span>
			</h6>
		</div>
       	<div class="form">
           	<form id="bmiCheckForm" name="bmiCheckForm">
				<label for="">??????</label>
				<input type="text" id="length" name="length"/><span>cm</span>
				<span class="dash">/</span>
				<label for="">??????</label>
				<input type="text" id="weight" name="weight"/><span>kg</span>
				<span class="compute">
			
					<input type="button" class="btn btn-lg btn-dark" id="btnCalc" value="??????" />
					<input type="reset" class="btn btn-lg btn-dark" value="?????????" />
				</span>
			</form>
			<dl class="clearfix" >
			<br>
				<dt><h5> </h5></dt>
				<dt><b><h5>????????? ??????</h5></b></dt>
				<h6 style="color: orange;"><dd id="resultText"></dd></h6>
				<dt><b><h5>BMI ??????</h5></b></dt>
				<h6 style="color: orange;"><dd id="bmiNumber"></dd></h6>
			</dl>
			<!-- <ul>
			<li>
				<label>BMI</label><label class="dv1">18.5</label><label class="dv2">23</label><label>25.00</label>
				<ul class="clearfix">
					<li class="low-weight">?????????</li>
					<li class="regular">??????</li>
					<li class="overweight">?????????</li>
					<li class="obesity">??????</li>
				</ul>
				<label>??????</label>
			</li>
			</ul> -->
           </div>
			</div>
</div>
<script type="text/javascript">
$().ready(function() {
	this.title = $(".pop-header h1").text();
	
	
	
	$("#btnCalc").click(function(){
		if($("#length").val()==""){
			alert("????????? ??????????????????");
			return false;
		}
		if($("#weight").val()==""){
			alert("????????? ??????????????????");
			return false;
		}
		var len = parseFloat($('#length').val())/100;
		var wet = parseFloat($('#weight').val());
		var result = parseFloat(wet)/parseFloat(len*len);
		var resultText = "";
		if(result<18.5){
			resultText = "?????????";
		} else if(result<23){
			resultText = "??????";
		} else if(result<25){
			resultText = "?????????";
		} else{
			resultText = "??????";
		}
		resultText += " ?????????.";
		
		$("#bmiNumber").text(result.toString().match(/^.*\.\d{2}/) || result);
		$("#resultText").text(resultText);
	});
	
	$(":reset").click(function(){
		$("#bmiNumber").text("");
		$("#resultText").text("");
	});
});

</script>

</body>
</html>
