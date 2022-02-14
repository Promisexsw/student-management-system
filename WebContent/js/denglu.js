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
