﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoMapDemo.aspx.cs" Inherits="GoMapDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GoMap Demo</title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyBjLaaY5ECqpGENPWlDsu5oDQ1GUAT_3co&sensor=false"></script> 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="JS/jquery.gomap-1.3.3.min.js"></script>
    <script>
        $(function () {
            $("#map").goMap();

            initMap();
        });
    </script>
    <script>
      function initMap() {
        var uluru = { lat: 50.3916, lng: -105.5349 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 6,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <style> 
    /* Map */ 
    #map { 
        width:700px; 
        height:400px; 
    } 
    /* Info window size (optional) */ 
    .gomapMarker { 
        display: block; 
        width: 150px; 
        height: auto; 
    } 
    </style> 
</head>
<body>
   
    <div id="map">
    
    </div>
   
</body>
</html>
