<%--
    Document   : lab4
    Created on : Sep 4, 2015, 11:57:09 AM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        
        <link href="Lab4.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <a href="index.html">Back to Index</a><br><br>
        <h1>Calculator - Lab 4</h1>
        
        
        <img class="col-md-4" src="../areaTriangle.png" alt=""/>
        <img class="col-md-4" src="../areaRectangle.jpg" alt=""/>
        <img class="col-md-4" src="../areaCircle.jpg" alt=""/>
        
        <form class="col-md-4" id="rectangle" action="controller4">
            <h2>Area of a Rectangle</h2>
            <label class="default">Length:</label>
            <input type="text" name="rLength" ><br><br>
            <label class="default">Width:</label>
            <input type="text" name="rWidth" ><br><br>
            <input type="text" name="type" value="rectangle" hidden="true">
            <input class="btn-danger" type="Submit" value="Submit">
            <br><br>

        </form>
        
        <form  class="col-md-4" id="circle" action="controller4">
            <h2>Area of a Circle</h2><br>
            <label class="default">Radius: </label>
            <input type="text" name="radius" ><br><br>
            <input type="text" name="type" value="circle" hidden="true">
            <input class="btn-danger" type="Submit" value="Submit">
            <br><br>

        </form>
        
        <form class="col-md-4"  id="triangle" action="controller4">
            <h2>Area of a Triangle</h2>
            <label class="default">Base:</label>
            <input type="text" name="tLength" ><br><br>
            <label class="default">Height</label>
            <input type="text" name="tHeight" ><br><br>
            <input type="text" name="type" value="triangle" hidden="true">
            <input class="btn-danger" type="Submit" value="Submit">
            <br><br>

        </form>
        <form class="col-md-4"  id="rectangleArea" method="Get">
            <%
                Object rect = request.getAttribute("rectArea");
                
                String rectArea = "";
                if(rect != null){
                    rectArea = (String) rect;
                }
                
            %>
            <label>The area of the rectangle is : <%=rectArea %></label>
        </form>
        <form class="col-md-4"  id="circleArea" method="Get">
            <%
                Object cir = request.getAttribute("cirArea");
                
                String cirArea = "";
                if(cir != null){
                    cirArea = (String) cir;
                }
                
            %>
            <label>The area of the circle is : <%=cirArea %></label>
        </form>
        <form class="col-md-4"  id="triangleArea" method="Get">
            <%
                Object tri = request.getAttribute("triArea");
                
                String triArea = "";
                if(tri != null){
                    triArea = (String) tri;
                }
                
            %>
            <label>The area of the triangle is : <%=triArea %></label>
        </form>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </body>
</html>

