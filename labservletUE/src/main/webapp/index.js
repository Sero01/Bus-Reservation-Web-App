function Clear() {
    document.getElementById("table").remove();
}
function al(row) {
       // Find the row
    var doj = row.find(".doj").text(); // Find the text
    var src = row.find(".src").text();
    var dst = row.find(".dst").text();
    var dep = row.find(".dep").text();
    var f = row.find(".f").text();
    localStorage.setItem("doj",doj);
    localStorage.setItem("src",src);
    localStorage.setItem("dst",dst);
    localStorage.setItem("dep",dep);
    localStorage.setItem("f",f);
    var prn=(Math.floor(Math.random()*10000000000));
    localStorage.setItem("prn",prn);
    //window.open('booking.jsp');
    book();
    //alert(window.doj);
    //export * from "./index.jsp";
}
function store(){
    var a=document.getElementById("name").value;
    var b=document.getElementById("phone").value;
    var c =document.getElementById("mail").value;
    var d=document.getElementById("age").value;
    var e=document.getElementById("sex").value;
    localStorage.setItem("name",a);
    localStorage.setItem("phone",b);
    localStorage.setItem("mail",c);
    localStorage.setItem("age",d);
    localStorage.setItem("sex",e);
    ticket();
}
function hiddencb(){
    if(document.getElementById("check").checked===true){
        document.getElementById("hiddencb").checked=true;
    }
    else if(document.getElementById("check").checked===false){
        document.getElementById("hiddencb").checked=false;
    }
}
function agreealert(){
    if(document.getElementById("hiddencb").checked===false){
        alert("Kindly Agree to the Terms and Conditions");
    }
}

function book(){
    window.open('booking.jsp');
    //window.location='booking.jsp';
}
function ticket(){
    window.open('ticket.jsp');
}

