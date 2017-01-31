<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2Review.aspx.cs" Inherits="Test2Review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyBjLaaY5ECqpGENPWlDsu5oDQ1GUAT_3co&sensor=false"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="JS/jquery.gomap-1.3.3.min.js"></script>

    <script>
        $(document).ready(function () {

            $("h4").click(function (event) {
                alert(event.target.id);
                $(".hiddenInfo").slideUp(3000);
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
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <h4 id="test<%iCounter.ToString();%>" ><%# Eval("Title") %></h4>
                        <span class="hiddenInfo<%iCounter.ToString();%>" hidden="hidden"><%# Eval("Director") %></span>
                        <span class="hiddenInfo<%iCounter.ToString();%>" hidden="hidden"><%# Eval("Description") %></span> 
                        <%iCounter++;%>
                        <hr />
                    </ItemTemplate>
                </asp:DataList>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
             </ContentTemplate>

        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
