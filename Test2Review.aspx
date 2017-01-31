<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2Review.aspx.cs" Inherits="Test2Review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            $(".MovieTitle").each(function (index) {
               
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

        <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 

            <ContentTemplate> --%>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <span class="MovieTitle" ><%# Eval("Title") %>
                            <span class="MovieDetails" style="display:none;">
                                <br /> <%# Eval("Director") %> <br />
                                <%# Eval("Description") %>
                            </span> 
                        </span>
                        <hr />
                    </ItemTemplate>
                </asp:DataList>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
           <%--  </ContentTemplate>

        </asp:UpdatePanel> --%>
    
    </div>
    </form>
</body>
</html>
