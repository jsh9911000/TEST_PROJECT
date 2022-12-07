<%@page import="java.util.List"%>
<%@page import="board.dto.BoardDto"%>
<%@page import="board.service.BoardService"%>
<%@page import="board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	BoardDto dto = new BoardDto();
	dto.setName(name);
	dto.setBoard_title(title);
	dto.setBoard_content(content);
	
	BoardDao dao = new BoardDao();
	BoardService bs = new BoardService(dao);
	bs.insert(dto);
	
	List<BoardDto> list = bs.selectAll();
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입니다.</title>
<style>
	body {
		background-color:black;
	}
	#title {
	 	color:white;
	 	text-align:center;
	}
	.add_content {
		display:flex;
		justify-content:center;
		align-items:center;
	}
	.go_back {
		display:flex;
		justify-content:center;
		align-items:center;
	}
	.container {
		width:600px;
		height:800px;
		margin-top:100px;
		margin-left:550px;
		background-color:gray;
		border:2px solid tomato;
		border-radius:8px;
	}
</style>
</head>
<body>
	<header>
		<div class="main_title">
			<h1 id="title">게시판</h1>
		</div>
		<div class="add_content">
			<button type="button" id="addBtn">추가</button>
		</div>
		<div class="go_back">
			<button type="button" onclick="location.href = '../index.jsp'">홈으로</button>
		</div>
	</header>
	<main>
		<div class="container">
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>게시자</th>
						<th>게시 날짜</th>
						<th>게시글</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${list }">
						<tr>
							<td>${tmp.num }</td>
							<td>${tmp.board_title}</td>
							<td>${tmp.name }</td>
							<td>${tmp.board_date }</td>
							<td>${tmp.board_content }</td>
							<td><button type="button" onclick="location.href='updateForm.jsp'">수정</button></td>
							<td><button type="button" onclick="javascript:deleteContent()">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</main>
<script>
	addBtn.addEventListener("click", () => {
		location.href = "addBoard.jsp";
	});
	
	function deleteContent(){
		const isDelete = confirm(`삭제하시겠습니까?`);
		if(isDelete){
			location.href = "delete.jsp";
		};
	};
</script>
</body>
</html>