<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지입니다.</title>
<style>
	body {
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
			<h1 id="title">회원가입</h1>
		</div>
	</header>
		<main>
			<div class="container">
				<form action="signup.jsp" method="post">
					<label for="name">이름</label>
					<input type="text" name="name" id="name"/>
					<label for="id">아이디</label>
					<input type="text" name="id" id="id"/>
					<label for="pwd">비밀번호</label>
					<input type="password" name="pwd" id="pwd"/>
					<label for="check_pwd">비밀번호 확인</label>
					<input type="password" name="check_pwd" id="check_pwd"/>
					<button type="submit" id="signupBtn">가입</button>
					<button type="button" id="returnHome">홈으로</button>
				</form>
			</div>
		</main>
<script>
	//두 개의 비밀번호 입력란이 일치하지 않을 경우, 전송을 막는다.
	signupBtn.addEventListener("click", (e) => {
		const pwd1 = pwd.value;
		const pwd2 = check_pwd.value;
		if(pwd1 != pwd2){
			e.preventDefault();
		};
	});
	returnHome.addEventListener("click", () => {
		location.href = "../index.jsp";	//.. 을 통해서 최상위 경로로 이동하는 방법.
	});
</script>
</body>
</html>