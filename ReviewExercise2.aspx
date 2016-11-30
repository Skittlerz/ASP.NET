<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReviewExercise2.aspx.cs" Inherits="ReviewExercise2" %>

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
    <div style="float:left;">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <th colspan="2">Contact Manager</th>
            </tr>
            <tr>
                <td><asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label></td>
                <td><asp:TextBox ID="txtFirstName" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label></td>
                <td><asp:TextBox ID="txtLastName" runat="server" Width="100%"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label></td>
                <td><asp:TextBox ID="txtPhoneNumber" runat="server" Width="100%"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><asp:LinkButton ID="lnkPrevious" runat="server" OnClick="lnkPrevious_Click">Previous</asp:LinkButton></td>
                <td><asp:LinkButton ID="lnkButton" runat="server" OnClick="lnkButton_Click">Next</asp:LinkButton></td>
                
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;"><asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click" /></td>
              
            </tr>
        </table>
        </div>
 
        <div style="float:right;">
       
        <asp:Panel ID="pnlAddress" runat="server" GroupingText="Address">
            <table>
                <tr>
                    <td><asp:Label ID="lblStreet" runat="server" Text="Street"></asp:Label></td>
                    <td><asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCity" runat="server" Text="City"></asp:Label></td>
                    <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblState" runat="server" Text="State"></asp:Label></td>
                    <td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                <td><asp:Label ID="lblZip" runat="server" Text="Zip"></asp:Label></td>
                <td><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>
       </form>
      </div>
    </div>
        
   
</body>
</html>
