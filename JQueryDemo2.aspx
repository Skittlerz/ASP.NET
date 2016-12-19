<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JQueryDemo2.aspx.cs" Inherits="JQueryDemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script>
        var sat = "Life is Good";
        var sun = "Stay Home";

        $(document).ready(function () {
            $("#sat").click(function () {
                $("#horoscope").html(sat);
            });

            $("#sun").click(function () {
                $("#horoscope").html(sun);
            });

            $("#mon").click(function () {
                $.get("Comp235\Horoscopes\Monday.txt", function (h, status) {
                    //alert("Data: " + data + "\nStatus: " + status);
                    $("#horoscope").html(h);
                });
            });
        });

    </script>
    <title>JQuery Demo 2</title>
</head>
<body>
    
    <div id="sat">
        Saturday
    </div>

    <div id="sun">
        Sunday
    </div>

    <div id="mon">
        Monday
    </div>
    <hr />
    <div id="horoscope">

    </div>
</body>
</html>
