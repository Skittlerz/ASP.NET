<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReviewExercise1.aspx.cs" Inherits="ReviewExercise1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <br />
        <table class="auto-style1">
            <tr>
                <td><asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" EnableViewState="False" width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblDistance" runat="server" Text="Distance"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDistance" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblShippingType" runat="server" Text="Shipping Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlShippingType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlShippingType_SelectedIndexChanged">
                        <asp:ListItem Value="0">Ground</asp:ListItem>
                        <asp:ListItem Value="0.05">Priority Ground</asp:ListItem>
                        <asp:ListItem Value="0.1">Air</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblShippingFee" runat="server" Text="Shipping Fee"></asp:Label>
                </td>
                <td style="border-style: solid; border-width: 1px; padding: 1px 4px">
                    <asp:Label ID="lblShippingFeeAmount" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblShipping" runat="server" Text="Shipping Cost"></asp:Label>
                </td>
                <td style="border-style: solid; border-width: 1px; padding: 1px 4px">
                    <asp:Label ID="lblShippingCost" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
                </td>
            </tr>
        </table>
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
