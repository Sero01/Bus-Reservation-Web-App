<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script>
        function printBook(){
            var doj=localStorage.getItem("doj");
            var src=localStorage.getItem("src");
            var dst=localStorage.getItem("dst");
            var dep=localStorage.getItem("dep");
            var f=localStorage.getItem("f");
            document.getElementById("th").innerHTML="Ticket Details";
            document.getElementById("1").innerHTML="Date of Journey: "+doj;
            document.getElementById("2").innerHTML="From: "+src;
            document.getElementById("3").innerHTML="To: "+dst;
            document.getElementById("4").innerHTML="Departure Time: "+dep;
            document.getElementById("5").innerHTML="Total Fare: "+f;
            //document.getElementById("6").innerHTML="Date of Journey: "+doj;
        }
    </script>
    <title>Book Ticket</title>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
<body onload="printBook()">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="indcss.css">
<br/>
<div class="grid-container">
    <div id = "ticketSection" class="item1" >
        <div id="ts" class="w3-animate-left w3-container w3-card-4 w3-light-grey w3-round-large">
            <p id="th" align="center" class="w3-teal w3-round-large" ></p>
            <table class="w3-table-all w3-margin-bottom">
                <tr id ="1"></tr>
                <tr id ="2" ></tr>
                <tr id ="3" ></tr>
                <tr id ="4" ></tr>
                <tr id ="5" ></tr>
                <tr id ="6" ></tr>
            </table>
        </div >
    </div>
    <center>
        <div  class="item2">
            <form action="./index.jsp" class=" w3-animate-bottom w3-container w3-card-4 w3-light-grey" onsubmit="store();">
                <div class="w3-teal w3-round-large w3-xxxlarge">
                    <p id="p2">Enter Passenger Details</p>
                </div> <br/>
                <div class="w3-row-padding">
                    <div >
                        <div align="left">
                            Name <input align="left" class="w3-round-large w3-input w3-border" type="Text" id="name" placeholder="First-Name Last-Name"  required/>&emsp;
                        </div>
                    </div>
                    <div align="left">
                        Phone No.<input class=" w3-round-large w3-input w3-border" type="Number" id="phone" size="10" placeholder="00000-11111" required/>&emsp;
                    </div>
                    <div align="left">
                        Email <input class=" w3-round-large w3-input w3-border" type="email" id="mail" size="10" placeholder="sample@gmail.com" required/>&emsp;
                    </div>
                    <div class="w3-row w3-row-padding">
                        <div class="w3-half">
                            Age<input class=" w3-round-large w3-input w3-border" type="Number" id="age" size="10" placeholder="Enter your age" required/>&emsp;
                        </div>
                        <div class="w3-half">
                            Gender
                            &emsp;<select class="w3-select w3-round-large w3-input w3-border" id="sex" required>
                                    <option style="color: lightgrey" value="" disabled selected>Choose your option</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Trans">Trans</option>
                                </select>
                        </div>
                    </div>
                    <div style="visibility: hidden"> <input id="hiddencb" type="checkbox" required></div>
                </div>
                <div>
                    <input type="submit" onclick="agreealert();" id="confirm" value="&emsp;&emsp;BOOK TICKET&emsp;&emsp;" size="60" class="w3-button w3-teal w3-round-large w3-margin-bottom"/>
                </div>
            </form>
        </div>
    </center>
    <div class="item3 w3-animate-right w3-container w3-card-4 w3-light-grey w3-teal w3-round-large">
        <p align="center" style="font-family: Verdana, sans-serif; font-size: large;">
            <strong><u>Terms and Conditions</u></strong>
        </p>
        <p>
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
        </p>
        <center>
            <form style="color:black; border-radius: 10px; border-top: 7px solid;border-bottom: 7px solid; border-color: teal"><br>
                <input type="checkbox" id="check" onclick="hiddencb();" required>&emsp;I agree to the terms and conditions<br><br>
            </form>

            </center><br>
    </div>
</div>
<br/>
<script type="text/javascript" src="index.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
