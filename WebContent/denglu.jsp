<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学生信息管理系统</title>
    <script src="./js/jQuery.js"></script>
    <style>
        .denglu {
            width: 100%;
            height: 100%;
            background-color: pink;
            background: url(./img/img5.png) no-repeat center center;
            background-size: 100%;
        }

        .jiemian {
            width: 245px;
            margin: 0 auto;
        }

        .user {
            width: 375px;
            margin: 0 auto;
        }

        .list1 {
            width: 450px;
            height: 350px;
            border: 3px solid black;
            margin: 100px auto;
            font-size: 20px;
            line-height: 60px;
        }

        a:hover {
            color: red;
        }

        a {
            font-size: 15px;
            border: 1px solid red;
        }

        .user .tu2 {
            width: 30px;
            height: 20px;
            vertical-align: middle;
        }

        .sub1 {
            float: left;
            padding: 0px 0px 0px 5px;
            /* line-height: 60px; */
        }

        .sub2 {
            float: left;
            padding: 0px 0px 0px 40px;
            /* line-height: 60px; */
        }

        .sub3 {
            float: left;
            padding: 0px 0px 0px 45px;
            /* line-height: 60px; */
        }
    </style>
    <link rel="stylesheet" href="css/style.css">

</head>

<body class="denglu">
   <%
		Cookie[] cookies=request.getCookies();
		String user="";
		String pwd="";
		if(cookies !=null){
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("mrCookie")){
					user=URLDecoder.decode(cookies[i].getValue().split("#")[0],"UTF-8");
					pwd=URLDecoder.decode(cookies[i].getValue().split("#")[1],"UTF-8");
				}
			}
		}
		
		
	%>
   
    <div class="list1">
        <div class="jiemian">
            <h4> 学生信息管理系统登录界面</h4>
        </div>
         <form method="post" action="/student/loginok" name="biaodan">
        <div class="user">
            用户名称：<input type="text" id="username" name="username"  msg="用户姓名" value="<%=user%>">
            <span class="span1"></span>
        </div>
        <div class="user">
            用户密码：<input type="password" id="userword" name="userword" msg="用户密码" name="new" value="<%=pwd%>">
            <span class="span2"></span>
        </div>
        <div class="user">
            用户类型：
            <input type="radio" name="people" id="stu">学生
            <input type="radio" name="people" id="tea">教师
            <input type="radio" name="people" id="con">管理人员
        </div>
        <div class="user">
            验证码：<input type="text" id="userma" msg="用户验证码">
            <img src="./img/tu2.png" alt="" class="tu2">
            <span class="span3"></span>
        </div>

        <div class="user">
            <div class="sub1">
               
                    <table>
                        <input type="submit" value="立即登录"  class="btn">
                    </table>
                
            </div>
            </form>
            <div class="sub2">
                <form action="register.jsp" name="表单名">
                    <table>
                        <input type="submit" value="免费注册">
                    </table>
                </form>
            </div>
            <div class="sub3">
                <form action="denglu.jsp" name="表单名">
                    <table>
                        <input type="submit" value="重新登录" >
                    </table>
                </form>
            </div>
        </div>
    </div>

</body>
<script>

    $(function () {
        $("#username").blur(function () {
            var name = $("#username").val();
            if (name == "whxsw") {
                $(".span1").text("输入正确");
                $(".span1").css({ "color": "green" });
                return true;
            }
            else{
				if(name==""){
					$(".span1").text("用户名不能为空");
					$(".span1").css({"color":"red"});
					return false;
				}
				else{
				if(name!="name"){
					$(".span1").text("用户名不正确");
					$(".span1").css({"color":"red"});
					return false;
				}
				}
				}
        })
        $("#userword").blur(function () {
            var password = $("#userword").val();
            if (password == "123456") {
                $(".span2").text("输入密码正确");
                $(".span2").css({ "color": "green" });
                return true;
            }
            else{
				if(password==""){
					$(".span2").text("密码不能为空");
					$(".span2").css({"color":"red"});
					return false;
				}
				else{
				if(password!="123456"){
					$(".span2").text("密码不正确");
					$(".span2").css({"color":"red"});
					return false;
				}
				}
				}
        })
        $("#userma").blur(function () {
            var ma = $("#userma").val();
            if (ma == "vw07") {
                $(".span3").text("输入验证码正确");
                $(".span3").css({ "color": "green" });
                return true;
            }
            else{
				if(ma==""){
					$(".span3").text("验证码不能为空");
					$(".span3").css({"color":"red"});
					return false;
				}
				else{
				if(ma!="vw07"){
					$(".span3").text("验证码不正确");
					$(".span3").css({"color":"red"});
					return false;
				}
				}
				}
        })
        $(".btn").click(function() {
            var name = $("#username").val();
            var password = $("#userword").val();
            var ma = $("#userma").val();
           if (name == "whxsw"&&password == "123456"&&ma == "vw07") {
               alert("登陆成功！")
        
                return true;
           }
           else {
               return false;
           }
        })
    })

</script>
<!-- <script src="js/denglu.js"></script> -->
</html>