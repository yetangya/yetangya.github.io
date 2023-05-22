<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" errorPage="error.jsp"%>
<html>
<head>
    <title>添加学生信息</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<form action="addsave.jsp" method="post">
    <h2 style="text-align: center;">添加学生信息</h2>
    <table style="width: 50%;margin: auto">
        <tr>
            <th width="30%">学号</th>
            <td width="70%"><input name="id" type="text"></td>
        </tr>
        <tr>
            <th>姓名</th>
            <td><input name="name" type="text"></td>
        </tr>
        <tr>
            <th>性别</th>
            <td><input name="sex" type="text"></td>
        </tr>
        <tr>
            <th>生日</th>
            <td><input name="birthday" type="text"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="submit" value="添加"> <input type="reset" value="重置"></td>
        </tr>
    </table>
</form>

</body>
</html>
