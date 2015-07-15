<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.js"></script>
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
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  



	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4"></div>
			<div class="col-lg-4 col-md-4 col-sm-4">
				<form class="form-signin" id="form-signin" action="loginProcess" method="post" >
					<h2 class="form-signin-heading">Please sign in</h2>
					<label class="sr-only">Email address</label> 
					<input type="text" name="id" id="id" class="form-control" placeholder="Email address" required autofocus>
					<label for="inputPassword" class="sr-only">Password</label> 
					<input type="password" name="pw" id="pw" class="form-control" placeholder="Password" required>
					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me">
							Remember me
						</label>
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit" name="submitnbtn"
						id="submitnbtn">Sign in</button>
				</form>

			</div>
			<div class="col-lg-4 col-md-4 col-sm-4"></div>
		</div>
	</div>


	<script type="text/javascript">
	
	
		$(function() {

				$('#form-signin').validate({
					
					// validation rule ���� 
					rules : {
						id : {
							required : true,
							minlength : 2, 
							email : true
						},
						pw : {
							required : true,
							minlength : 2
						}
					},
					messages : {
						id : {
							required : "���̵� �Է��Ͻÿ�.",
							minlength : "���̵�� {0}�� �̻� �Է��Ͽ��� �˴ϴ�. ",
							email : "�ùٸ� �̸����ּҸ� �Է��Ͻÿ�."
						},
						pw : {
							required : "��й�ȣ�� �Է��Ͻÿ�.",
							minlength : "�н������ {0}�� �̻� �Է��Ͽ��� �˴ϴ�. "
						}
					},
			        highlight: function (element) {
			            $(element).closest('.form-control').removeClass('success').addClass('error');
			            $(element).value = ""; 
			        },
			        /// ���� �Էµ� ���� ó�� 
			        success: function (element) {
			            element.text('OK!').addClass('valid')
			                .closest('.form-control').removeClass('error').addClass('success');
			        }					
					
				});
		});
	</script>


</body>
</html>










<!-- 

<html>
<head>
    <title>�α���������</title>  
</head>
  
<body>
<h2>�α��� </h2>
<form name="form" method="post" action="loginProcess">
<table>
    <tr height="40px">
        <td>����ھ��̵�</td>
        <td><input type="text" name="id"></td>
    </tr>
    <tr height="40px">
        <td>�н�����</td>
        <td><input type="password" name="pw"></td>
    </tr>
</table>
<table>
    <tr>
        <td align="center"><input type="submit" value="�α���"></td>
        <td align="center"><input type="reset" value="����"></td>
    </tr>
</table>
</form>
</body>
</html>

 -->
