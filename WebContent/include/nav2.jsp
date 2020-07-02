<%@ page import="com.cos.keep.model.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Keep</title>
</head>

<style>
.navbar {
	border-bottom: 1px solid #5F6368;
}

.bg-custom {
	background-color: #202124;
}

html body {
	background-color: #202124;
}

html body {
 background: #E9FAFF;

}


.navbar-nav>li {
	padding-left: 5px;
	padding-right: 5px;
}

.input-group md-form form-sm form-1 pl-0 {
	width: 50%;
}

/* element.style { */
/* 	width: 615px; */
/* 	height: 46px; */
/* } */

.form-control {
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.428571429;
	color: #E9E9E9;
	vertical-align: middle;
	background-color: #525355;
	background-image: none;
	border: 1px solid #525355;
	border-radius: 4px;
	box-shadow: inset 0 1px 1px #525355;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
 



.btn-danger {
	color: #fff;
	background-color: #525355;
	border-color: #525355;
}
</style>

<body>
	<nav class="navbar navbar-expand-md bg-custom navbar-dark ">
		<!-- Brand -->
		<img src="/keep/static/image/icon.png" width="40px" height="40px" />
		<a class="navbar-brand" href="/keep/memo?cmd=main"
			style="margin-left: 8px; margin-right: 96px;">Keep</a>

		<!-- Toggler/collapsibe Button  검색버튼 -->

		<c:if test="${not empty sessionScope.principal.id }">






			<!-- 			<div class="input-group md-form form-sm form-1 pl-0" -->
			<!-- 				style="height: 38px; width: 615px;"> -->
			<!-- 				<div class="input-group-prepend"> -->

			<!--  					<div class="col-lg-12 text-center mt-5"> -->

			<!-- </div> -->
			<!-- <div class="col-md-4 offset-md-4 mt-5 border border-success pt-3"> -->
			<!-- <div class="input-group mb-3"> -->
			<!--   <span class="input-group-text"><i class="fa fa-search"></i></span> -->

			<!--   <input type="text" class="form-control" placeholder="Search ......" aria-label="Recipient's username">  -->
			<!--   <div class="input-group-append"> -->

			<!--   </div> -->
			<!--   </div> -->
			<!-- </div> -->

			<!-- 				</div> -->
			<!-- 				 <i class="material-icons" style="color: red;">search</i> -->
			<!-- 				<input class="form-control my-0 py-1" type="text" -->
			<!-- 					placeholder="Search" aria-label="Search"> -->

			<!-- 			</div> -->





			<!-- Navbar links navbar 창 -->
			<div class="collapse navbar-collapse justify-content-end"
				id="collapsibleNavbar">

				<ul class="navbar-nav">


					<li class="nav-item "><i
						onclick="location.href='http://localhost:8000/keep/memo?cmd=main'"
						class="material-icons" style="cursor: pointer; color: #98989A;" title="메모">lightbulb_outline</i></li>
					<li class="nav-item "><i
						onclick="location.href='http://localhost:8000/keep/memo?cmd=main'"
						class="material-icons" style="cursor: pointer color: ; color: #98989A;" title="리마인더">notifications_none</i></li>
					<!-- 					<li class="nav-item "><a class="nav-link " -->
					<!-- 						href="/keep/memo?cmd=main">메모</a></li> -->
					<!-- 					<li class="nav-item" style="padding-right: 60px;"><a -->
					<!-- 						class="nav-link" href="/keep/memo/reminder.jsp">리마인더</a></li> -->

				</ul>
			</div>
		</c:if>

		<c:if test="${not empty sessionScope.principal.id}">
<!-- 			<ul class="navbar-nav"> -->
<!-- 				<li class="nav-item"> -->
				<a class="nav-link " href="/keep/person?cmd=logout" style="text-decoration:none; color: #98989A;">로그아웃</a>
				<!--</li>  -->
<!-- 			</ul> -->
			<a class="navbar-brand" href="/keep/person?cmd=profileUpload"> <img
				style="border-radius: 15px"
				onerror="this.src='/keep/static/image/userProfile.png'"
				src="${sessionScope.principal.userProfile }" width="30px"
				height="30px" />
			</a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
		</c:if>
	</nav>

	<br />
	<br />