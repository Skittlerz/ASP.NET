<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestReview3.aspx.cs" Inherits="TestReview3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="insertMovieCategory" SelectMethod="getMovieCategories" TypeName="MovieManager" UpdateMethod="updateMovieCategory">
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="Category" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyField="Id" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>
            
        </asp:GridView>
    <p>
        `</p>
        <asp:Panel ID="Panel1" runat="server" GroupingText="Add New Category" Width="30%">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
    </body>
</html>
