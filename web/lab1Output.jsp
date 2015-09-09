<%-- 
    Document   : lab1Output
    Created on : Sep 2, 2015, 9:35:18 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculations</title>
    </head>
    <body>
        <a href="index.html">Back to Index</a><br><br>
        <%
            Object objName = request.getAttribute("area");
            String area = "";
            if(objName != null){
                area = (String) objName;
            }
            %>
        <h1>The Area of the rectangle is <%=area%></h1>
    </body>
</html>
