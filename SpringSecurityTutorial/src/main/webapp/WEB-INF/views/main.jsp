<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  







	<div class="container">
		<div class="jumbotron">
			<h1>환영합니다. ${useruName}</h1>
			<p>현재 시간 : ${ currentTime } </p>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<h3>useruName</h3>
				<p>${useruName}</p>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<h3>useruPassword</h3>
				<p>${useruName}</p>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<h3>session id</h3>
				<p>${id}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<h3>세션 생성 시간</h3>
				<p>${creationTime}</p>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<h3>세션 마지막 Access 시간</h3>
				<p>${lastAccessTime}</p>
			</div>
		</div>
		
	</div>

</body>
</html>
