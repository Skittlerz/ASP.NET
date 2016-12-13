<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestReview4.aspx.cs" Inherits="TestReview4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Title], [Id] FROM [Movies]"></asp:SqlDataSource>
    
    </div>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" style="height: 26px" Text="Schedule" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
