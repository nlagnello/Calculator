<%-- 
    Document   : lab2
    Created on : Sep 2, 2015, 9:45:56 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <a href="index.html">Back to Index</a><br><br>
        <h1>Calculator - Lab 2</h1>
        
        <form method="Post" action="controller2">
            <label>Length:</label>
            <input type="text" name="length" required="true"><br><br>
            <label>Width:</label>
            <input type="text" name="width" required="true"><br><br>
            <input type="Submit" value="Submit">
            <br><br>
            
            
        </form>
        <form method="Get">
            <%
                Object obj = request.getAttribute("area");
                
                String area = "";
                if(obj != null){
                    area = (String) obj;
                }
                
            %>
            <label>The area is : <%=area %></label>
        </form>
    </body>
</html>
