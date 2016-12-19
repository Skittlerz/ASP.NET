<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JQueryDemo1.aspx.cs" Inherits="JQueryDemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            $("#btnHide").click(function () {
                $("p").hide();
            });

            $("#show").click(function () {
                $("#hiddenLink").slideDown(3000);
                //$("#hiddenLink").css("dislay", "block");
            })
        });
    </script>
    <title>JQuery Demo 1</title>
</head>
<body>
   
    <div>

        <h2>This is a heading</h2>
        <p>This is a paragraph.</p>
        <p>This is another paragraph.</p>
        <button id="btnHide">Click me</button>
        <hr />
        <p id="show">1.	Write a jQuery function that displays a hidden link when a paragraph is clicked.  The paragraph should have an id of “show” and the link an id of ”hiddenLink”. Use the show() function.</p>
        
        <a style="display:none" href="http://www.w3schools.com/jquery/" 
            id="hiddenLink">Learn JQuery</a>
    </div>
    
</body>
</html>
