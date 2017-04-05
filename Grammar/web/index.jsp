<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>HTML5 Page Title</title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div style="margin-top: 20px;"></div>

    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            不要点我
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">照妖镜</a></li>
            <li><a href="#">丑拒</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">回炉再造</a></li>
        </ul>
    </div>

    <%
        int type = 0;
        if(type == 0) {
    %>
    <h1>你是用户</h1>
    <%
        }
        else {
            out.print("<h1>你是管理员</h1>");
        }

        Date nowday=new Date();  			//获取当前日期
        // int hour=nowday.getHours();			//获取日期中的小时
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //定义日期格式化对象
        String time= ft.format(nowday);	//将指定日期格式化为”yyyy-MM-dd HH:mm:ss”形式

//        response.sendError(407, "Need authentication!!!" );
// 加上这句就没了
    %>
    <p>当前时间<%=time%></p>
</div>




<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>