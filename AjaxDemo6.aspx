<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDemo6.aspx.cs" Inherits="AjaxDemo6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnOne" runat="server" Text="Button 1" OnClick="btnOne_Click"></asp:Button>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <img src="UploadedImages/Progress.gif" alt="progress bar"/>
                        Working on it...
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="updatePanel2" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnTwo" runat="server" Text="Button 2" OnClick="btnTwo_Click"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
    <script type="text/javascript">

    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_initializeRequest(prm_initializeRequest);    
    
    function prm_initializeRequest(sender, args)
    {
        if (prm.get_isInAsyncPostBack())
        {
            alert('Still Processing First Request');
            args.set_cancel(true);
        }
    }
    </script>
</body>
</html>
