<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WeatherReports.aspx.cs" Inherits="WeatherReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <asp:GridView ID="gvReports" runat="server">
            </asp:GridView>
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
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
