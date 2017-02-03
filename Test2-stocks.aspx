<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2-stocks.aspx.cs" Inherits="Test2_stocks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            $(".StockTitle").each(function (index) {
               
                $(this).click(function () {
                    $(this).children().show();
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 

        <ContentTemplate> 
        <asp:DataList ID="dlStocks" runat="server" OnSelectedIndexChanged="dlStocks_SelectedIndexChanged">
             <ItemTemplate>
                        <span class="StockTitle" ><%# Eval("StockName") %>
                            <span class="StockDetails" style="display:none;">
                                <br /> <%# Eval("StockCode") %> <br />
                                Shares: <%# Eval("Quantity") %> <br />
                                Price: <%# Eval("Price") %>
                            </span> 
                        </span>
                        <hr />
                    </ItemTemplate>
        </asp:DataList>
    
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </ContentTemplate>
     </asp:UpdatePanel>
    
    </div>
    </form>
</body>
    <script>
        var prm = Sys.WebForms.PageRequestManager.getInstance();

        prm.add_endRequest(function () {

            $(".StockTitle").each(function (index) {
               
                $(this).click(function () {
                    $(this).children().show();
                });
            });
        });
    </script>
</html>
