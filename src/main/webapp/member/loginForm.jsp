<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼입니다.</title>
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
</style>
</head>
<body>
	<header>
		<div class="main_title">
			<h1 id="title">로그인</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<form action="login.jsp" method="post">
				<label for="id">아이디</label>
				<input type="text" name="id" id="id"/>
				<label for="pwd">비밀번호</label>
				<input type="text" name="pwd" id="pwd"/>
				<button type="submit">로그인</button>
			</form>
		</div>
	</main>
</body>
</html>