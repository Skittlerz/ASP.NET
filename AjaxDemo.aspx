<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDemo.aspx.cs" Inherits="AjaxDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="lblPageloadTime" runat="server"></asp:Label>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" Text="Click Me" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="lblUpdatePanelTime" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
