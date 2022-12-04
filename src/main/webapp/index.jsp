<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP를 이용한 Backend 연습입니다.</title>
<style>
	body{
		background-color:black;
	}
	.main_title {
		border:2px solid tomato;
	}
	#title {
		color:white;
		text-align:center;
	}
	.container {
		width:600px;
		height:800px;
		margin-top:100px;
		margin-left:550px;
		background-color:gray;
		border:2px solid tomato;
		border-radius:8px;
		display:flex;
		justify-content:center;
		align-items:center;
	}
	.root_box {
		width:500px;
		height:500px;
		background-color:white;
		border:2px solid tomato;
		border-radius:8px;
	}
	
</style>
</head>
<body>
	<header>
		<div class="main_title">
			<h1 id="title">연습용 PROJECT</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<div class="root_box">
				<dl>
					<dt>회원가입</dt>
					<dd><button type=button id="signup">이동</button></dd>
				</dl>	
			</div>
		</div>
	</main>
<script>
	signup.addEventListener("click", () => {
		location.href = "member/signupForm.jsp";
	});
</script>
</body>
</html>