<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%        
    String sql = "select max(custno) from member_tbl_02";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    rs.next();
    int num = rs.getInt(1)+1;
%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>쇼핑몰 회원관리</title>
   <link rel="stylesheet" href="./css/style.css">
<script type="text/javascript">
        function checkValue() {
            if(!document.data.custname.value) {
                alert("회원성명을 입력하세요.");
                document.data.custname.focus();
                return false;
            } else if(!document.data.phone.value) {
                    alert("전화번호를 입력하세요.");
                    document.data.phone.focus();
                    return false;
            } else if(!document.data.address.value) {
                    alert("주소를 입력하세요.");
                    document.data.address.focus();
                    return false;
            } else if(!document.data.joindate.value) {
                    alert("가입일자를 입력하세요.");
                    document.data.joindate.focus();
                    return false;
            } else if(!document.data.grade.value) {
                    alert("고객등급을 입력하세요.");
                    document.data.grade.focus();
                    return false;
            } else if(!document.data.city.value) {
                    alert("도시코드를 입력하세요.");
                    document.data.city.focus();
                    return false;
            }
        }
    </script>
</head>

<body>
    <div class="section">
        <iframe src="./layout/header.jsp" style= "width: 100%; height: 120px; border:none"></iframe>

        <h3 class="title">회원등록</h3>
        <form name="data" action="join_p.jsp" method="post"
                                                         onsubmit="return checkValue()">
        <table class="table_line">
            <tr>
                <th>회원번호(자동발생)</th>
                <td><input type="text" name="custno" value="<%= num %>" size = "10" readonly></td>
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
                <th>고객등급</th>
                <td>
                	<input type="radio" name="grade" value="A">A-VIP
                	<input type="radio" name="grade" value="B">B-일반
                	<input type="radio" name="grade" value="C" checked="checked">C-직원
                </td>
            </tr>
            <tr>
                <th>도시코드</th>
                <td>
                	<select name="city">
                		<option value="10">서울</option>
                		<option value="20" selected>성남</option>
                		<option value="30">수원</option>
                		<option value="40">분당</option>
                		<option value="50">용인</option>
                		<option value="60">평택</option>
                		<option value="70">안성</option>
                	</select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                <input type="submit" value="등록">
                <input type="button" value="취소" onclick="location.href='join.jsp'">
                <input type="button" value="조회" onclick="location.href='member_list.jsp'">
            </tr>
        </table>
        </form>
        
        <footer id = "footer">
                <iframe src="./layout/footer.jsp" style= "width: 100%; height: 30px; border:none"></iframe>
        </footer>
    </div>
</body>
</html>
