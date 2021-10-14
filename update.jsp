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

      if(!document.data.custname.value){
         alert("ȸ�������� �Է��ϼ���.");
         document.data.custname.focus();
         return false;
      } else if(!document.data.phone.value){
         alert("��ȭ��ȣ�� �Է��ϼ���.");
         document.data.phone.focus();
         return false;
      } else if(!document.data.address.value){
         alert("�ּҸ� �Է��ϼ���.");
         document.data.address.focus();
         return false;
      } else if(!document.data.joindate.value){
         alert("�������ڸ� �Է��ϼ���.");
         document.data.joindate.focus();
         return false;
      } else if(!document.data.grade.value){
         alert("������� �Է��ϼ���.");
         document.data.grade.focus();
         return false;
      } else if(!document.data.city.value){
         alert("�����ڵ带 �Է��ϼ���.");
         document.data.city.focus();
         return false;
      }
   }
      function checkDel(custno){
         msg="�����ϰڽ��ϱ�?";
         if(confirm(msg)!=0){
	alert("�����Ǿ����ϴ�.");
         } else{
	alert("������ ��ҵǾ����ϴ�.");
	return;
         }
      }
   </script>
</head>

<body>
   <div class="section">
      <iframe src="./layout/header.jsp" width=100% height=120px></iframe>
      <h3 class="title">Ȩ���� ȸ�� ���� ����</h3>
      <form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">

      <table class="table_line">
         <tr>
	<th>ȸ����ȣ(�ڵ��߻�)</th>
	<td><input type="text" name="custno" value="100013" size="10" readonly></td>
         </tr>
         <tr>
	<th>ȸ������</th>
	<td><input type="text" name="custname" size="10" required></td>
         </tr>
         <tr>
	<th>ȸ����ȭ</th>
	<td><input type="text" name="phone" size="15" required></td>
         </tr>
         <tr>
	<th>ȸ���ּ�</th>
	<td><input type="text" name="address" size="25" required></td>
         </tr>
         <tr>
	<th>��������</th>
	<td><input type="text" name="joindate" size="10" required></td>
         </tr>
         <tr>
	<th>�����[A:VIP, B:�Ϲ�, C:����]</th>
	<td><input type="text" name="grade" size="10" required></td>
         </tr>
         <tr>
	<th>�����ڵ�</th>
	<td><input type="text" name="city" size="10"required></td>
         </tr>
         <tr>
	<td colspan="2" align="center">
	   <input type="submit" value="����">
	   <input type="button" value="��ȸ" onclick="location.href='member_list.jsp'">
	   <input type="button" value="����" onclick="checkDel('custno')">
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