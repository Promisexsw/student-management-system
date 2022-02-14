<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户管理界面</title>
    <script src="./js/jQuery.js"></script>
    <style>
        .manage {
            width: 100%;
            height: 100%;
            /* background-color: pink; p*/
            background: url(./img/img4.png) no-repeat center center;
            background-size: 100%;
        }
         .list3 {
            width: 600px;
            height: 249px;
            margin: 100px auto;
            font-size: 20px;
            /* line-height: 60px; */
        }
        .h2 {
            margin-bottom: 5px;
        }
        .session {
            float: left;
            width: 150px;
        }
        table {
            width: 600px;
            height: 249px;
        }

        table,
        td,
        th {
            border: 1px solid black;
            /* 合并相邻的边框 */
            border-collapse: collapse;
            font-size: 14px;
            text-align: center;
        }

        th {
            background-color: #6495ED;
        }
    </style>
</head>

<body class="manage">
   <%
   //String name = request.getParameter("username");
   //session.setAttribute("name",name);
    // String username1 = (String)session.getAttribute("name");
   String username1 = (String)session.getAttribute("username");
   %>
    <div class="list3">
        <div class="h2">
            
            <h2 style="color:red">管理</h2>
            <input type="text">
            <button>查找</button>
            <button onclick="return check4()">修改</button>
            <button onclick="return check3()">删除</button>
           <div class="session">欢迎您：<%=username1%></div>
        </div>
        <table align="center" cellspacing="0">
            <thead>
                <tr>
                    <th>用户名</th>
                    <th>姓名</th>
                    <th>用户类型</th>
                    <th>手机号</th>
                    <th>邮箱</th>
                    <th>所在单位</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>小杰子</td>
                    <td>王杰</td>
                    <td>学生</td>
                    <td>18954887754</td>
                    <td>987555221@qq.com</td>
                    <td>计算机学院</td>
                    <td><a href="#">修改密码</a></td>
                </tr>

                <tr>
                    <td>铁蛋</td>
                    <td>边成</td>
                    <td>老师</td>
                    <td>15254889654</td>
                    <td>825278297@qq.com</td>
                    <td>土木学院</td>
                    <td><a href="#">修改密码</a></td>
                </tr>

                <tr>
                    <td>帅帅</td>
                    <td>刘栋帅</td>
                    <td>学生</td>
                    <td>13757689654</td>
                    <td>598771263@qq.com</td>
                    <td>微电子学院</td>
                    <td><a href="#">修改密码</a></td>
                </tr>

                <tr>
                    <td>阿维</td>
                    <td>王维</td>
                    <td>学生</td>
                    <td>19954658954</td>
                    <td>369825411@qq.com</td>
                    <td>水利水电学院</td>
                    <td><a href="#">修改密码</a></td>
                </tr>

                <tr>
                    <td>朋朋</td>
                    <td>任思朋</td>
                    <td>学生</td>
                    <td>1732598714</td>
                    <td>698148526qq.com</td>
                    <td>通信学院</td>
                    <td><a href="#">修改密码</a></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script src="js/manage.js"></script>
</body>

</html>