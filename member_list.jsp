<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>���θ� ȸ������</title>
   <link rel="stylesheet" href="./css/style.css">
   <script type="text/javascript">
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
      <h3 class="title">ȸ�������ȸ/����</h3>

      <table class="table_line">
         <tr>
	<th>ȸ����ȣ</th>
	<th>ȸ������</th>
	<th>��ȭ��ȣ</th>
	<th>�ּ�</th>
	<th>��������</th>
	<th>�����</th>
	<th>��������</th>
	<th>���� �� ����</th>
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
	   <input type="button" value="����" onclick="parent.location.href='update.jsp'">
	   <input type="button" value="����" onclick="checkDel('custno')">
	</td>
         </tr>
      </table>
   <div id="footer">
      <iframe src="./layout/footer.jsp" width=100% height=30px></iframe>
   </div>
</body>
</html>