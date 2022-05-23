<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ticket Booked!</title>
    <script>
        function printticket(){
            var doj=localStorage.getItem("doj");
            var src=localStorage.getItem("src");
            var dst=localStorage.getItem("dst");
            var dep=localStorage.getItem("dep");
            var f=localStorage.getItem("f");
            document.getElementById("1").innerHTML=doj;
            document.getElementById("2").innerHTML=src;
            document.getElementById("3").innerHTML=dst;
            document.getElementById("4").innerHTML=dep;
            document.getElementById("5").innerHTML=f;
            document.getElementById("6").innerHTML=localStorage.getItem("name");
            document.getElementById("7").innerHTML=localStorage.getItem("mail");
            document.getElementById("8").innerHTML=localStorage.getItem("phone");
            document.getElementById("9").innerHTML=localStorage.getItem("age");
            document.getElementById("10").innerHTML=localStorage.getItem("sex");
            document.getElementById("11").innerHTML=localStorage.getItem("prn");
        }
    </script>
</head>
<body onload="printticket();">
<div style="border:black; border-width:3px; border-style:solid;margin: 40px">
<center>
<h4 >
    <b>
        <u>
            Online Bus Reservation System<br>Electronic Reservation Slip (Personal User)<br>
        </u>
    </b>
</h4>
</center>
<div style="border-spacing: 20px">
    <p style="margin: 10px">
        1.You can travel on e-ticket sent on SMS or take a Virtual Reservation Message (VRM) along with any one of the prescribed ID in
        original. Please do not print the ERS unless extremely necessary. This Ticket will be valid with an ID proof in original. Please carry
        original identity proof. If found traveling without original ID proof, passenger will be treated as without ticket and charged as per extent
        Railway Rules.<br>
        2.Only confirmed/Partially confirmed E-ticket is valid for travel.<br>
        3.Fully Waitlisted E-ticket is invalid for travel if it remains fully waitlisted after preparation of chart and the refund of the
        booking amount shall be credited to the account used for payment for booking of the ticket. Passengers travelling on a fully
        waitlisted e-ticket will be treated as Ticketless.<br>
        4.Valid IDs to be presented during train journey by one of the passenger booked on an e-ticket :- Voter Identity Card / Passport / PAN
        Card / Driving License / Photo ID card issued by Central / State Govt / Public Sector Undertakings of State / Central Government
        ,District Administrations , Municipal bodies and Panchayat Administrations which are having serial number / Student Identity Card with
        photograph issued by recognized School or College for their students / Nationalized Bank Passbook with photograph /Credit Cards
        issued by Banks with laminated photograph/Unique Identification Card "Aadhaar", m-Aadhaar, e-Aadhaar. /Passenger showing the
        Aadhaar/Driving Licence from the "Issued Document" section by logging into his/her DigiLocker account considered as valid proof of
        identity. (Documents uploaded by the user i.e. the document in "Uploaded Document" section will not be considered as a valid proof of
        identity).<br>
        5.Service Accounting Code (SAC) 996411: Local land transport services of passengers by railways for distance upto 150 KMs Service
        Accounting Code (SAC) 996416: Sightseeing transportation services by railways for Tourist Ticket Service Accounting Code (SAC)
        996421: Long distance transport services of passengers through rail network by Railways for distance beyond 150 KMs<br>
        6.While booking this ticket, you have agreed of having read the Health Protocol of Destination State of your travel. You are
        again advised to clearly read the Health Protocol advisory of destination state before start of your travel and follow them
        properly.<br><br>
    </p>
    <center>
    <table class="w3-card-2 w3-table-all" style="width: 60%">
        <tr>
            <th>Passenger Name</th>
            <th>Email Id</th>
            <th>Phone no.</th>
            <th>Age</th>
            <th>Gender</th>
        </tr>
        <tr>
            <td id="6"></td>
            <td id="7"></td>
            <td id="8"></td>
            <td id="9"></td>
            <td id="10"></td>
        </tr>
    </table>

       <br/>

    <table class="w3-card-2 w3-table-all" style="width: 60%">
        <tr>
            <th style="width: 20%"> Date of Journey</th>
            <th> From</th>
            <th> To</th>
            <th style="width: 20%"> Departure</th>
            <th> Fare</th>
            <th>PRN No.</th>
        </tr>
        <tr>
            <td id ="1"></td>
            <td id ="2" ></td>
            <td id ="3" ></td>
            <td id ="4" ></td>
            <td id ="5" ></td>
            <td id="11" ></td>
        </tr>
    </table>
        <img src="https://www.marinersforex.com/img/about.png"><br>
        <button onclick="window.print();" class="w3-button w3-teal w3-round-large  w3-margin-bottom">
            Print My Ticket
        </button>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
    <script type="text/javascript" src="index.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </center>
</div>
</div>
</body>
</html>
