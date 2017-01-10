<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WeatherReports.aspx.cs" Inherits="WeatherReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyBjLaaY5ECqpGENPWlDsu5oDQ1GUAT_3co&sensor=false"></script> 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="JS/jquery.gomap-1.3.3.min.js"></script>
    <script>
        $(document).ready(function () {

            $("#map").goMap({
                latitude: $("#first").text().split("x")[0],
                longitude: $("#first").text().split("x")[1],
                zoom: 3
            });

            num = 0;
            $(".coord").each(function (index) {

                $.goMap.createMarker({
                    latitude: $(this).text().split("x")[0],
                    longitude: $(this).text().split("x")[1],
                    title: 'marker' + num

                    
                })

                num++;
            })  
        }); 
    </script>
    <style> 
    /* Map */ 
    #map { 
        width:700px; 
        height:400px; 
    } 
    /* Info window  size (optional) */ 
    .gomapMarker { 
        display: block; 
        width: 150px; 
        height: auto; 
    } 
    </style> 
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="map">
    
    </div>
   
     <div>
            <asp:Repeater ID="rptReports" runat="server">
                <ItemTemplate>
                    <% if (iCounter == 0) { %>
                   <span id="first" class="coord" hidden="hidden"><%# Eval("Latitude") %>x<%# Eval("Longitude") %></span>
                    <% } else { %>
                    <span class="coord" hidden="hidden"><%# Eval("Latitude") %>x<%# Eval("Longitude") %></span>
                    <% }
                    iCounter++;%>
                </ItemTemplate>
            </asp:Repeater>          
            <asp:GridView ID="gvReports" runat="server">
            </asp:GridView>

            <asp:Button ID="btnAllReports" runat="server" Text="All Reports" OnClick="btnAllReports_Click" />
            <asp:Button ID="btnMostRecentReport" runat="server" Text="Most Recent Report" OnClick="btnMostRecentReport_Click" />
            <br />
        <asp:Panel ID="Panel1" runat="server" GroupingText="Add New Weather Report">
            <table class="auto-style1" style="width:400px;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Latitude"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLat" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Longitude"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLon" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Facing"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFacing" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ADD</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
