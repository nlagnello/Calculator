<%-- 
    Document   : labHW
    Created on : Sep 8, 2015, 7:25:09 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.html">Back to Index</a><br><br>
        <h1>Calculator - Homework</h1>
        
        <form method="Get">
            
            <label>The area is : ${area}</label>
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
