<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%  String g_nav = "RUN update count: "; %>
<%@ include file="layout/db_connect.jsp" %>
<%
	String sql="select custno, custname, phone, address, " 
    	+ "to_char(joindate, 'yyyy-mm-dd') joindate, grade, city "
    	+ "from member_tbl_02 "
    	+ "where custno=" + request.getParameter("click_custno");

	Statement pstmt = conn.createStatement();
	ResultSet rs = pstmt.executeQuery(sql);

	rs.next();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>쇼핑몰 회원관리</title>
   <link rel="stylesheet" href="./css/style.css">
   <script type="text/javascript">
  function checkValue() {
        var cv = document.u_data;
        
        if(!cv.custname.value) {
            alert("회원성명을 입력하세요.");
            cv.custname.focus();
        return false;
        } else if(!cv.phone.value) {
            alert("전화번호를 입력하세요.");
            cv.phone.focus();
            return false;
        } else if (!cv.address.value) {
            alert("주소를 입력하세요.");
            cv.address.focus();
            return false;
        } else if (!cv.joindate.value) {
            alert("가입일자를 입력하세요.");
            cv.joindate.focus();
            return false;
        } else if (cv.grade.value =="") {
            alert("고객등급을 입력하세요.");
            cv.grade.focus();
            return false;
        }  else if (!document.u_data.city.value) {
            alert("도시코드를 입력하세요.");
            document.u_data.city.focus();
            return false;
        }
  }
    function checkDel(custno) {
        msg="삭제하시겠습니까?";
        if(confirm(msg)==1){
            alert("삭제");
            location.href="delete.jsp?d_custno="+custno;
        } else {
            alert("취소");
        }
    }
   </script>
</head>

<body>
    <div class="section">
        <iframe src="./layout/header.jsp"style= "width: 100%; height: 120px; border:none"></iframe>

        <h3 class="title">홈쇼핑 회원 정보 수정</h3>
        <form name="u_data" action="update_p.jsp" method="post" onsubmit="return checkValue()">
        <table class="table_line">
            <tr>
                <th>회원번호</th>
                <td><input type="text" name="custno" value=<%= rs.getString("custno") %> size="10" readonly></td>
            </tr>
            <tr>
                <th>회원성명</th>
                <td><input type="text" name="custname" value=<%= rs.getString("custname") %> size="10"></td>
            </tr>
            <tr>
                <th>회원전화</th>
                <td><input type="text" name="phone" value=<%= rs.getString("phone") %> size="15"></td>
            </tr>
            <tr>
                <th>회원주소</th>
                <td><input type="text" name="address" value=<%= rs.getString("address") %> size="25"></td>
            </tr>
            <tr>
                <th>가입일자</th>
                <td><input type="text" name="joindate" value=<%= rs.getString("joindate") %> size="10"></td>
            </tr>
            <tr>
                <th>고객등급[A:VIP,B:일반,C:직원]</th>
                <td><input type="text" name="grade" value=<%= rs.getString("grade") %> size="10">%>"
                </td>
            </tr>
            <tr>
                <th>도시코드</th>
                <td><input type="text" name="city" value=<%= rs. getString("city") %> size="10"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                <input type="submit" name="submit" value="수정">
                <input type="button" name="search" value="조회" onclick="parent.location.href='member_list.jsp'">
                <input type="button" value="삭제" onclick="checkDel(<%= rs.getString("custno")%>);">
                </td>
            </tr>
        </table>
        </form>
        <div id = "footer">
                <iframe src="./layout/footer.jsp" style= "width: 100%; height: 30px; border:none"></iframe>
        </div>
    </div>
</body>
</html>
