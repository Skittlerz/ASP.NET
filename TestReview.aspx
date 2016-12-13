<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestReview.aspx.cs" Inherits="TestReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Director] FROM [Movies]"></asp:SqlDataSource>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Director" DataValueField="Director">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getMoviesByDirector" TypeName="MovieManager">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="director" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:CheckBoxField DataField="InTheatres" HeaderText="InTheatres" SortExpression="InTheatres" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
