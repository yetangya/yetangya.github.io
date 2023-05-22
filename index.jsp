<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page errorPage="error.jsp"%>
<html>
<head>
    <title>学生信息管理系统</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1 style="text-align: center;">学生信息管理系统</h1>
<p align="center"><a  href="add.jsp">添加学生信息</a></p>
<br />
<table style="width: 50%;margin: auto">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>生日</th>
        <th>管理</th>
    </tr>
    <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql:///db1?useSSL=false&amp;useServerPrepStmts=true?","root","1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from student");
            while (rs.next()) {
                out.println("<tr><td><p align=\"center\">" + rs.getString(1)
                        +"</p></td><td><p align=\"center\">" + rs.getString(2)
                        + "</p></td><td><p align=\"center\">" + rs.getString(3)
                        + "</p></td><td><p align=\"center\">" + rs.getString(4)
                        + "</p></td><td><p align=\"center\"><a href='edit.jsp?id="+rs.getString(1)
                        + "'>修改</a>&nbsp;<a href='del.jsp?id=" + rs.getString(1) + "'>删除</p></a></td></tr>");
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println("Exception:" + e.getMessage());
        }
    %>
</table>
<br />
<hr />
<div style="text-align: center; font-size: 15px;">
    &copy;版权所有：石家庄铁道大学信息科学与技术学院
</div>
</body>
</html>
