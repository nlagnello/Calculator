<%-- 
    Document   : lab3
    Created on : Sep 4, 2015, 11:57:09 AM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body
        <h1>Calculator - Lab 3</h1>
        
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
        <form id="rectangle" action="controller3">
            <h2>Area of a Rectangle</h2>
            <label>Length:</label>
            <input type="text" name="rLength" ><br><br>
            <label>Width:</label>
            <input type="text" name="rWidth" ><br><br>
            <input type="text" name="type" value="rectangle" hidden="true">
            <input type="Submit" value="Submit">
            <br><br>

        </form>
        <form id="circle" action="controller3">
            <h2>Area of a Circle</h2>
            <label>Radius: </label>
            <input type="text" name="radius" ><br><br>
            <input type="text" name="type" value="circle" hidden="true">
            <input type="Submit" value="Submit">
            <br><br>

        </form>
        <form id="triangle" action="controller3">
            <h2>Area of a Triangle</h2>
            <label>Length:</label>
            <input type="text" name="tLength" ><br><br>
            <label>Height</label>
            <input type="text" name="tHeight" ><br><br>
            <input type="text" name="type" value="triangle" hidden="true">
            <input type="Submit" value="Submit">
            <br><br>

        </form>
    </body>
</html>
