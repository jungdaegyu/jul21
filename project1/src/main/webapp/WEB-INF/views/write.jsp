<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 GET</title>
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/write.css">

<!-- include libraries(jQuery, bootstrap)... 글쓰는거 만드려고.. 붙여넣은거임-->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


</head>

<body>
<%@ include file="menu.jsp" %>
	<h1>글을 쓴다</h1>
	<div class="write-div">
	<form action="./write" method="post"><!--글을 쓸때 post를 쓴다 -->		
		<input type="text" name="title">
		<textarea id="summernote" name="content"></textarea>
		<button class="btn100" type="submit">글쓰기</button>
		</form>
		<!-- type="submit" => 제출버튼, 폼데이터로 데이터 전송 -->	
	</div>
	
	
	
<script type="text/javascript"> <!-- ready.. 위에서 다 읽어들였다면 실행-->
/*JQuery문법 : 문서가 모두 로딩 되었다면, 익명함수를 실행하세요*/
/*textarea에 위에 id 서머노트를 실행해주세요  */
  $(document).ready(function() {
  $('#summernote').summernote({
	  height: 400
  });
});
</script>		
	
	
	
</body>
</html>