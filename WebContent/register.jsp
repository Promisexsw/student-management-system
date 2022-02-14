<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>账号注册界面</title>
    <script src="./js/jQuery.js"></script>
    <style>
        .register {
            width: 100%;
            height: 100%;
            background-color: pink;
            background: url(./img/img3.jpg) no-repeat center center;
            background-size: 100%;
        }

        .list2 {
            width: 430px;
            height: 380px;
            border: 3px solid black;
            margin: 100px auto;
            font-size: 20px;
            /* line-height: 60px; */
        }

        .jiemian {
            text-align: center;
            width: 245px;
            font-size: 30px;
            margin: 0 auto;
        }

        .sub1 {
            float: left;
            padding: 0px 0px 0px 100px;
            line-height: 60px;
        }

        .sub2 {
            float: left;
            padding: 0px 0px 0px 45px;
            line-height: 60px;
        }

        .tu2 {
            width: 30px;
            height: 20px;
            vertical-align: middle;
            padding: 2px 0 0 10px;
        }

        span {
            font-size: 15px;
        }
    </style>
</head>

<body class="register">

    <div class="list2">
        <div class="jiemian">
            账号注册界面
        </div>
        <table>
            <div class="one">

                <form method="post" action="finish.jsp">

                    <tr>
                        <td style="width: 100px;">用户类型:</td>
                        <td>
                            <input type="radio" name="people" value="学生用户" id="stu">学生
                            <input type="radio" name="people" value="教师用户" id="tea">教师
                            <input type="radio" name="people" value="管理用户" id="con">管理人员
                        </td>
                    </tr>

                    <tr>
                        <td>用户名:</td>
                        <td><input type="text" id="username" name="username" placeholder="请输入用户名" msg="用户名">
                            <span class="span1"></span>
                        </td>

                    </tr>
                    <tr>
                        <td>密码:</td>
                        <td><input type="password" id="userword1" placeholder="请输入密码" msg="密码">
                            <span class="span2"></span>
                        </td>

                    </tr>
                    <tr>
                        <td>确认密码:</td>
                        <td><input type="password" id="userword2" placeholder="请确认密码" msg="确认密码">
                            <span class="span3"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>姓名:</td>
                        <td><input type="text" id="name" name="name" placeholder="请输入姓名" msg="姓名">
                            <span class="span4"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>手机号码:</td>
                        <td><input type="text" id="mobile" name="mobile" placeholder="请输入手机号码" msg="手机号码">
                            <span class="span5"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>邮箱:</td>
                        <td><input type="text" id="email" name="email" placeholder="请输入邮箱" msg="邮箱">
                            <span class="span6"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>所在单位:</td>
                        <td><input type="text" id="firm" name="firm" placeholder="请输入所在单位" msg="所在单位">
                            <span class="span7"></span>
                        </td>

                    </tr>
                    <tr>
                        <td class="user">验证码:</td>
                        <td><input type="text" placeholder="请输入验证码" id="userma" msg="验证码"><img src="./img/tu2.png"
                                alt="" class="tu2">
                            <span class="span8"></span>
                        </td>

                    </tr>
        </table>

        <div class="sub1">
            <input type="submit" value="完成注册" class="btn">
        </div>

        <div class="sub2">
            <input type="submit" value="重新注册">
        </div>

        </form>




    </div>
    <script>
        $(function () {

            $("#username").blur(function () {
                var name = $("#username").val();
                if (name == "") {
                    $(".span1").text("用户名不能为空");
                    $(".span1").css({ "color": "red" });
                    return false;
                }
                else {
                    $(".span1").text("填写成功");
                    $(".span1").css({ "color": "green" });
                    return true;
                }
            })
            $("#userword1").blur(function () {
                var password1 = $("#userword1").val();
                if (password1 == "") {
                    $(".span2").text("密码不能为空");
                    $(".span2").css({ "color": "red" });
                    return false;
                }
                else {
                    $(".span2").text("密码输入完成");
                    $(".span2").css({ "color": "green" });
                    return true;
                }
            })
            $("#userword2").blur(function () {
                var password1 = $("#userword1").val();
                var password2 = $("#userword2").val();
                if (password1 == password2) {
                    $(".span3").text("两次输入密码一致");
                    $(".span3").css({ "color": "green" });
                    return true;
                }
                else {
                    if (password2 == "") {
                        $(".span3").text("输入密码不能为空");
                        $(".span3").css({ "color": "red" });
                        return false;
                    }
                    else {
                        $(".span3").text("再次输入密码不一致");
                        $(".span3").css({ "color": "red" });
                    }
                }
            })
            $("#name").blur(function () {
                var name1 = $("#name").val();
                if (name1 == "") {
                    $(".span4").text("姓名不能为空");
                    $(".span4").css({ "color": "red" });
                    return false;
                }
                else {
                    $(".span4").text("姓名输入完成");
                    $(".span4").css({ "color": "green" });
                    return true;
                }
            })
            $("#mobile").blur(function () {
                var mobile = $("#mobile").val();
                if (!mobile.match(/^(((13[0-9]{1})|159|153)+\d{8})$/)) {
                    $(".span5").text("手机号码格式不正确");
                    $(".span5").css({ "color": "red" });
                    return false;
                }
                else {
                    $(".span5").text("手机号码格式正确");
                    $(".span5").css({ "color": "green" });
                    return true;
                }
            })
            $("#email").blur(function () {
                var email = $("#email").val();
                if (!email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
                    $(".span6").text("邮箱格式不正确");
                    $(".span6").css({ "color": "red" });
                    return false;
                }
                else {
                    $(".span6").text("邮箱格式正确");
                    $(".span6").css({ "color": "green" });
                    return true;
                }
            })
            $("#firm").blur(function () {
                var firm = $("#firm").val();
                if (firm == "") {
                    $(".span7").text("所在单位不能为空");
                    $(".span7").css({ "color": "red" });
                    return false;
                }
                else {
                    $(".span7").text("填写完成");
                    $(".span7").css({ "color": "green" });
                    return true;
                }
            })
            $("#userma").blur(function () {
                var userma = $("#userma").val();
                if (userma == "vw07") {
                    $(".span8").text("验证码正确");
                    $(".span8").css({ "color": "green" });
                    return true;
                }
                else {
                    if (userma == "") {
                        $(".span8").text("验证码为空");
                        $(".span8").css({ "color": "red" });
                        return false;
                    }
                    else {
                        $(".span8").text("验证码错误");
                        $(".span8").css({ "color": "red" });
                        return false;
                    }

                }
            })
            $(".btn").click(function () {
                var name = $("#username").val();
                var password1 = $("#userword1").val();
                var password2 = $("#userword2").val();
                var name1 = $("#name").val();
                var mobile = $("#mobile").val();
                var email = $("#email").val();
                var firm = $("#firm").val();
                var userma = $("#userma").val();
                if (name !== "" && password1 == password2 && name1 != "" && mobile != "" && email != "" && firm != "" && userma != "") {
                    alert("注册成功！");
                    return true;
                }
                else {
                    return false;
                }

            })

        })

    </script>
    <!-- <script src="js/register.js"></script> -->
</body>

</html>