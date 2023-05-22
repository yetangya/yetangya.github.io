<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>删除学生信息</title>
    <link rel="stylesheet" type="text/css" href="">
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql:///db1?useSSL=false&amp;useServerPrepStmts=true", "root", "1234");
    Statement stmt=con.createStatement();
    String id=request.getParameter("id");
    int i=stmt.executeUpdate("delete from student where id="+id);
    if(i==1)
    {
        out.println("<h2>删除成功！</h2><br/>");
    }
    else
    {
        out.println("<h2>删除失败！</h2><br/>");
    }
    out.println("<a href='index.jsp'>返回首页</a>");
    stmt.close();
    con.close();
%>
</body>
</html>
