<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>쇼핑몰 회원관리</title>
   <link rel="stylesheet" href="./css/style.css">
   <script type="text/javascript">
   function checkValue(){
      var cv = document.data;

      if(!cv,.custname.value==""){
         alert("회원성명을 입력하세요.");
         cv.custname.focus();
         return false;
      } else if(!cv.phone.value==""){
         alert("전화번호를 입력하세요.");
         cv.phone.focus();
         return false;
      } else if(!cv.address.value==""){
         alert("주소를 입력하세요.");
         cv.address.focus();
         return false;
      } else if(!cv.joindate.value==""){
         alert("가입일자를 입력하세요.");
         cv.joindate.focus();
         return false;
      } else if(!cv.grade.value==""){
         alert("고객등급을 입력하세요.");
         cv.grade.focus();
         return false;
      } else if(!document.data.city.value){
         alert("도시코드를 입력하세요.");
         document.data.city.focus();
         return false;
      }
   }
   </script>
</head>

<body>
   <div class="section">
      <iframe src="./layout/header.jsp" width=100% height=120px></iframe>
      <h3 class="title">회원등록</h3>
      <form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">

      <table class="table_line">
         <tr>
	<th>회원번호(자동발생)</th>
	<td><input type="text" name="custno" value="100013" size="10" readonly></td>
         </tr>
         <tr>
	<th>회원성명</th>
	<td><input type="text" name="custname" size="10"></td>
         </tr>
         <tr>
	<th>회원전화</th>
	<td><input type="text" name="phone" size="15"></td>
         </tr>
         <tr>
	<th>회원주소</th>
	<td><input type="text" name="address" size="25"></td>
         </tr>
         <tr>
	<th>가입일자</th>
	<td><input type="text" name="joindate" size="10"></td>
         </tr>
         <tr>
	<th>고객등급[A:VIP, B:일반, C:직원]</th>
	<td><input type="text" name="grade" size="10"></td>
         </tr>
         <tr>
	<th>도시코드</th>
	<td><input type="text" name="city" size="10"></td>
         </tr>
         <tr>
	<td colspan="2" align="center">
	   <input type="submit" value="등록">
	   <input type="button" value="취소" onclick="location.href='join.jsp'">
	   <input type="button" value="조회" onclick="location.href='member_list.jsp'">
	</td>
         </tr>
      </table>
      </form>

         <div id="footer">
            <iframe src="./layout/footer.jsp" width=100% height=30px></iframe>
         </div>
   </div>
</body>
</html>