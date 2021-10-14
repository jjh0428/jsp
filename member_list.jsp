<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>쇼핑몰 회원관리</title>
   <link rel="stylesheet" href="./css/style.css">
   <script type="text/javascript">
      function checkDel(custno){
         msg="삭제하겠습니까?";
         if(confirm(msg)!=0){
	alert("삭제되었습니다.");
         } else{
	alert("삭제가 취소되었습니다.");
	return;
         }
      }
   </script>
</head>

<body>
   <div class="section">
      <iframe src="./layout/header.jsp" width=100% height=120px></iframe>
      <h3 class="title">회원목록조회/수정</h3>

      <table class="table_line">
         <tr>
	<th>회원번호</th>
	<th>회원성명</th>
	<th>전화번호</th>
	<th>주소</th>
	<th>가입일자</th>
	<th>고객등급</th>
	<th>거주지역</th>
	<th>수정 및 삭제</th>
         </tr>
         <tr>
	<th>custno</th>
	<th>custname</th>
	<th>phone</th>
	<th>address</th>
	<th>joindate</th>
	<th>grade</th>
	<th>city</th>
	<td colspan="2" align="center">
	   <input type="button" value="수정" onclick="parent.location.href='update.jsp'">
	   <input type="button" value="삭제" onclick="checkDel('custno')">
	</td>
         </tr>
      </table>
   <div id="footer">
      <iframe src="./layout/footer.jsp" width=100% height=30px></iframe>
   </div>
</body>
</html>