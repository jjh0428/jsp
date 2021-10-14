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

      if(!document.data.custname.value){
         alert("회원성명을 입력하세요.");
         document.data.custname.focus();
         return false;
      } else if(!document.data.phone.value){
         alert("전화번호를 입력하세요.");
         document.data.phone.focus();
         return false;
      } else if(!document.data.address.value){
         alert("주소를 입력하세요.");
         document.data.address.focus();
         return false;
      } else if(!document.data.joindate.value){
         alert("가입일자를 입력하세요.");
         document.data.joindate.focus();
         return false;
      } else if(!document.data.grade.value){
         alert("고객등급을 입력하세요.");
         document.data.grade.focus();
         return false;
      } else if(!document.data.city.value){
         alert("도시코드를 입력하세요.");
         document.data.city.focus();
         return false;
      }
   }
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
      <h3 class="title">홈쇼핑 회원 정보 수정</h3>
      <form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">

      <table class="table_line">
         <tr>
	<th>회원번호(자동발생)</th>
	<td><input type="text" name="custno" value="100013" size="10" readonly></td>
         </tr>
         <tr>
	<th>회원성명</th>
	<td><input type="text" name="custname" size="10" required></td>
         </tr>
         <tr>
	<th>회원전화</th>
	<td><input type="text" name="phone" size="15" required></td>
         </tr>
         <tr>
	<th>회원주소</th>
	<td><input type="text" name="address" size="25" required></td>
         </tr>
         <tr>
	<th>가입일자</th>
	<td><input type="text" name="joindate" size="10" required></td>
         </tr>
         <tr>
	<th>고객등급[A:VIP, B:일반, C:직원]</th>
	<td><input type="text" name="grade" size="10" required></td>
         </tr>
         <tr>
	<th>도시코드</th>
	<td><input type="text" name="city" size="10"required></td>
         </tr>
         <tr>
	<td colspan="2" align="center">
	   <input type="submit" value="수정">
	   <input type="button" value="조회" onclick="location.href='member_list.jsp'">
	   <input type="button" value="삭제" onclick="checkDel('custno')">
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