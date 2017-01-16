<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDemo4-ProgrammaticUpdates.aspx.cs" Inherits="AjaxDemo4_ProgrammaticUpdated" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <asp:LinkButton ID="btnGetMovie" runat="server" OnClick="btnGetMovie_Click">Get Movie</asp:LinkButton>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="gvMovies" runat="server"></asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
