<%-- 
    Document   : home
    Created on : Aug 9, 2017, 1:58:40 PM
    Author     : DELL
--%>

<%@page import="mypack.Hibersql"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj1" class="mypack.selection"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <table>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>address</th>
            </tr>
     <% for(Object h:obj1.select()){ Hibersql obj=(Hibersql)h;%>
                <tr>
                    <td><%=obj.getId()%></td>
                    <td><%=obj.getName()%></td>
                    <td><%=obj.getAddress()%></td>
                </tr>
                <%}%>
                
                <a href="index.html">Home</a>
                </c:forEach>
        </table>
    </body>
</html>
