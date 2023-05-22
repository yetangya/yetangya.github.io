<%@ page import="java.sql.*" pageEncoding="utf-8" errorPage="error.jsp"%>
<html>
<head>
    <title>修改学生信息</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql:///db1?useSSL=false&amp;useServerPrepStmts=true", "root", "1234");
    PreparedStatement stmt = con.prepareStatement("select * from student where id=?");
    stmt.setString(1, id);
    ResultSet rs = stmt.executeQuery();
    rs.next();
%>
<form action="editsave.jsp" method="post">
    <h2>修改学生信息</h2>
    <table style="width:50%">
        <tr>
            <th width="30%">学号：</th>
            <td width="70%"><%=rs.getString(1)%>
                <input name="id" type="hidden" value="<%=rs.getString(1)%>"></td>
        </tr>
        <tr>
            <th>姓名：</th>
            <td><input name="name" type="text" value="<%=rs.getString(2)%>"></td>
        </tr>
        <tr>
            <th>性别：</th>
            <td><input name="sex" type="text" value="<%=rs.getString(3)%>"></td>
        </tr>
        <tr>
            <th>生日：</th>
            <td><input name="birthday" type="text" value="<%=rs.getString(4)%>"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="修改">
                <input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
<%
    rs.close();
    stmt.close();
    con.close();
%>
</body>
</html>
