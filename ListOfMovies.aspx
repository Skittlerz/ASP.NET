<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListOfMovies.aspx.cs" Inherits="ListOfMovies" %>

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
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="deleteMovie" SelectMethod="getMovies" TypeName="MovieManager" UpdateMethod="updateMovie">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32"/>
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="director" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="getMovieCategories" TypeName="MovieManager"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="getMoviesByCategory" TypeName="MovieManager">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="cat" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server">
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
                    <asp:DropDownList ID="ddlMovieCat" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Category" DataValueField="Id">
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
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="Category" DataValueField="Id">
        </asp:DropDownList>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource3">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
