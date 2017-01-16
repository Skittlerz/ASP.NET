<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDemo7.aspx.cs" Inherits="AjaxDemo7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnGetFortune" runat="server" Text="Get Fortune" OnClick="btnGetFortune_Click" />
                <br />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Enabled="False" />
                <br />
                <asp:Label ID="lblFortune" runat="server"></asp:Label>
                <br />
                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <img src="UploadedImages/Progress.gif" alt="progress bar"/>
                        Checking my crystal ball...
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
    <script type="text/javascript">

    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_initializeRequest(prm_initializeRequest);
    
    function prm_initializeRequest(sender, args)
    {
        if (args.get_postBackElement().id == 'btnCancel')
        {
            prm.abortPostBack();
            alert("Fortune Aborted!");
        }
        else
        {
        
            $get('btnCancel').disabled = false;
        }
    }
    </script> 

</body>
</html>
