<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>���θ� ȸ������</title>
   <link rel="stylesheet" href="./css/style.css">
   <script type="text/javascript">
   function checkValue(){
      var cv = document.data;

      if(!cv,.custname.value==""){
         alert("ȸ�������� �Է��ϼ���.");
         cv.custname.focus();
         return false;
      } else if(!cv.phone.value==""){
         alert("��ȭ��ȣ�� �Է��ϼ���.");
         cv.phone.focus();
         return false;
      } else if(!cv.address.value==""){
         alert("�ּҸ� �Է��ϼ���.");
         cv.address.focus();
         return false;
      } else if(!cv.joindate.value==""){
         alert("�������ڸ� �Է��ϼ���.");
         cv.joindate.focus();
         return false;
      } else if(!cv.grade.value==""){
         alert("������� �Է��ϼ���.");
         cv.grade.focus();
         return false;
      } else if(!document.data.city.value){
         alert("�����ڵ带 �Է��ϼ���.");
         document.data.city.focus();
         return false;
      }
   }
   </script>
</head>

<body>
   <div class="section">
      <iframe src="./layout/header.jsp" width=100% height=120px></iframe>
      <h3 class="title">ȸ�����</h3>
      <form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">

      <table class="table_line">
         <tr>
	<th>ȸ����ȣ(�ڵ��߻�)</th>
	<td><input type="text" name="custno" value="100013" size="10" readonly></td>
         </tr>
         <tr>
	<th>ȸ������</th>
	<td><input type="text" name="custname" size="10"></td>
         </tr>
         <tr>
	<th>ȸ����ȭ</th>
	<td><input type="text" name="phone" size="15"></td>
         </tr>
         <tr>
	<th>ȸ���ּ�</th>
	<td><input type="text" name="address" size="25"></td>
         </tr>
         <tr>
	<th>��������</th>
	<td><input type="text" name="joindate" size="10"></td>
         </tr>
         <tr>
	<th>�����[A:VIP, B:�Ϲ�, C:����]</th>
	<td><input type="text" name="grade" size="10"></td>
         </tr>
         <tr>
	<th>�����ڵ�</th>
	<td><input type="text" name="city" size="10"></td>
         </tr>
         <tr>
	<td colspan="2" align="center">
	   <input type="submit" value="���">
	   <input type="button" value="���" onclick="location.href='join.jsp'">
	   <input type="button" value="��ȸ" onclick="location.href='member_list.jsp'">
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