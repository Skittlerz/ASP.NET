<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test3.aspx.cs" Inherits="Test3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="rptJobs" runat="server">
            <ItemTemplate>
            <a href='Test3.aspx?id=<%#Eval("JobCode") %>'> <%#Eval("JobCode") %> - <%#Eval("JobDescription") %></a>
            </ItemTemplate>
        </asp:Repeater>
    <div>
    
    </div>
    </form>
</body>
</html>
