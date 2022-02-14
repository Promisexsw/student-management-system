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
        if(name!==""&&password1==password2&&name1!=""&&mobile!=""&&email!=""&&firm!=""&&userma!="") {
            alert("注册成功！");
            return true;
        }
        else {
            return false;
        }

    })

})