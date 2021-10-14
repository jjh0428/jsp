<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>쇼핑몰 회원관리</title>
   <link rel="stylesheet" href="./css/style.css">
</head>

<body>
   <div class="section">
      <iframe src="./layout/header.jsp" width=100% height=120px></iframe>
      <h3 class="title">회원매출조회</h3>

      <table class="table_line">
         <tr>
	<th>회원번호</th>
	<th>회원성명</th>
	<th>고객등급</th>
	<th>매출</th>
         </tr>
         <tr>
	<th>custno</th>
	<th>custname</th>
	<th>grade</th>
	<th>price</th>
         </tr>

         <div id="footer">
            <iframe src="./layout/footer.jsp" width=100% height=30px></iframe>
         </div>
   </div>
</body>
</html>