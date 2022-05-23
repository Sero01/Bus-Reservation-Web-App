<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online Bus Reservation System</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="indcss.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
<body>
<br/>
<center>
<div style="width:40%; " class="w3-animate-top">
    <form action="./index.jsp" class="w3-container w3-card-4 w3-light-grey" >
        <div class="w3-teal w3-round-large w3-xxxlarge">
            <p id="p1">Search for Rides</p>
        </div>
        <div class="w3-row-padding">
            <div class="w3-half" align="left">
                &emsp;From<input class="w3-round-large w3-input w3-border" type="Text" name="source" size="10" placeholder="Enter Boarding City"  required/>&emsp;
            </div>
            <div class="w3-half" align="left">
                &ensp;To<input class=" w3-round-large w3-input w3-border" type="Text" name="dest" size="10" placeholder="Enter Destination City" required/>&emsp;
            </div>
            <div class="w3-full">
                Date of Journey<input class="w3-round-large w3-input w3-border" type="date" name ="date" size="10" required/> <br/>
            </div>
        </div>
        <div>
            <input type="submit" value="&emsp;&emsp;Search&emsp;&emsp;" size="60" class="w3-button w3-teal w3-round-large w3-margin-bottom"/>&emsp;
            <button onclick="Clear();" class="w3-button w3-teal w3-round-large  w3-margin-bottom">
                Clear Schedules
            </button>
        </div>
    </form>
    <br>
</div>

</center>
<br/>

<%@ page import ="java.util.*" %>
<%@ page import="java.sql.*" %>

<% String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "bus";
    String userId = "root";
    String password = "Rootpass@123";
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

try{
    String a = request.getParameter("source");
    String b = request.getParameter("dest");
    String c = request.getParameter("date");
    //int c = request.getParameter();
    Connection conn = DriverManager.getConnection(connectionUrl+dbName,userId,password);
    Statement statement = conn.createStatement();
    String query = "select * from bus where Source='"+a+"'and Destination='"+b+"' and Date_of_Journey ='"+c+"'";
    ResultSet resultSet = statement.executeQuery(query);
%><br/>
<div id="table" align="center" style="cursor: pointer">
    <table class="w3-card-4 w3-round-large w3-centered w3-hoverable w3-animate-bottom ">
    <tr class="w3-Teal ui-widget-header ">
        <th style="width: 20%"> Date of Journey</th>
        <th> From</th>
        <th> To</th>
        <th style="width: 20%"> Departure</th>
        <th> Fare</th>
    </tr>
        <% System.out.println();
            while(resultSet.next()){
        %>
            <tr class="user">
            <td class="doj"> <%=resultSet.getString("Date_of_Journey") %> </td>&ensp;
            <td class="src"> <%=resultSet.getString("Source") %> </td>&ensp;
            <td class="dst"> <%=resultSet.getString("Destination") %> </td>&ensp;
            <td class="dep"> <%=resultSet.getString("Departure") %> </td>&ensp;
            <td class="f"> <%=resultSet.getString("Fare") %> </td>&ensp;</tr>
        <%}%>

    </table>
</div><br/>
<%
        }catch(Exception e){
            out.println(e);
} destroy();%>
<br/>
<script type="text/javascript" src="index.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
    $(document).ready(function(){
        $(".user").on("click", function (){
            window.$row = $(this).closest("tr");
            //localStorage.setItem("dj",$row);
            //window.open('booking.jsp');
            al($row);
            //localStorage.clear();
        });
    });

</script>

</body>
</html>