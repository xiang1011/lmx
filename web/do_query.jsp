<%@ page import="cap.db.DBCon" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    DBCon dbCon = new DBCon();
    String sql = "select * from admin order by id";
    ResultSet resultSet = dbCon.doQuery(sql, new Object[]{});
%>
<table>
    <%
        while (resultSet.next()) {
    %>
    <tr>
        <td><%=resultSet.getInt("id")%>
        </td>
        <td><%=resultSet.getString("username")%>
        </td>
        <td><%=resultSet.getString("password")%>
        </td>
    </tr>
    <%
        }
        dbCon.close();
    %>
</table>
</body>
</html>
