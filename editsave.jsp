<%@ page import="java.sql.*" pageEncoding="utf-8" errorPage="error.jsp"%>
<html>
<head>
  <title>修改完成</title>
  <link rel="stylesheet" type="text/css" href="">
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String sex = request.getParameter("sex");
  String birthday = request.getParameter("birthday");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql:///db1?useSSL=false&amp;useServerPrepStmts=true", "root", "1234");
  Statement stmt = con.createStatement();
  String sql = "update student set id='"+id+"',name='" + name  + "',sex='" + sex+ "',birthday='" + birthday + "'where id=" + id;
  int i = stmt.executeUpdate(sql);
  if (i == 1) {
    out.println("<h2 style=\"text-align: center;\">修改成功！</h2><br/>");
    out.println("<a href='index.jsp'>返回首页</a>");
  } else {
    out.println("<h2 style=\"text-align: center;\">修改失败！</h2><br/>");
    out.println("<a href='edit.jsp?id='" + id + ">重新添加</a>");
  }
  stmt.close();
  con.close();
%>
</body>
</html>
