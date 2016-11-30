<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridViewUpdates.aspx.cs" Inherits="GridViewUpdates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" 
            SelectCommand="SELECT [Id], [Title], [Director], [InTheaters] FROM [Movies]"
            UpdateCommand="Update Movies SET Title = @Title, Director = @Director, InTheaters = @InTheaters WHERE Id = @Id"
            InsertCommand="Insert Into Movies (Title,Director,InTheaters,Description,CategoryId) VALUES(@Title,@Director,@InTheaters,@Description,@CategoryId)">
            <InsertParameters>
                <asp:Parameter Name="Title" />
                <asp:Parameter Name="Director" />
                <asp:Parameter Name="InTheaters" />
                <asp:Parameter Name="Description" />
                <asp:Parameter Name="CategoryId" />
            </InsertParameters> 
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [MovieCategories]"></asp:SqlDataSource>
        
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:CheckBoxField DataField="InTheaters" HeaderText="InTheaters" SortExpression="InTheaters" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    <br />
        <asp:Panel ID="Panel1" runat="server" Height="16px" Width="40%" GroupingText="Add Movie">
        <table class="auto-style1">
            <tr>
                <td>Title:</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Director:</td>
                <td>
                    <asp:TextBox ID="txtDirector" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Now Playing:</td>
                <td>
                    <asp:CheckBox ID="cbInTheatres" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Category:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="lbAdd" runat="server" OnClick="lbAdd_Click">Add</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    </form>
    </body>
</html>
