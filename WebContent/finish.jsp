<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <%
    request.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String realname=request.getParameter("name");
	String phonename=request.getParameter("mobile");
	String email=request.getParameter("email");
	String log=request.getParameter("people");
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>success</title>
    <link rel="stylesheet" type="text/css" href="css/manage_css.css" />
</head>

<style>
    .suc {
      width: 100%;
      height: 100%;
      background: url(img/img7.png) no-repeat center center;
      background-size: 100%;
    }
    td {
            border: 1px solid black;
            /* 合并相邻的边框 */
            border-collapse: collapse;
            font-size: 14px;
            text-align: center;
        }
    table {
            margin-top:190px;
            width: 400px;
            height: 300px;
        }
</style>


<body class="suc">
<%request.setCharacterEncoding("utf-8"); %>
  <jsp:useBean id="user" class="com.stu">
	<jsp:setProperty property="*" name="user"/>
</jsp:useBean>
 <table class="t1" align="center" cellspacing="0">
        <tr>
            <td>用户名</td>
            <td><%=username%></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><%=realname%></td>
        </tr>
        <tr>
            <td>用户类型</td>
            <td><%=log%></td>
        </tr>
        <tr>
            <td>手机号</td>
            <td><%=phonename%></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><%=email%>
            </td>
        </tr>


         
    </table>

</body>
</html>