<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataListDemo.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Director" DataValueField="Director" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DataList ID="dlMovies" runat="server" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="dlMovies_SelectedIndexChanged">
            <ItemTemplate>
                <h3>Title: <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></h3>
                <br />
                Director:
                <asp:Label ID="DirectorLabel" runat="server" Text='<%# Eval("Director") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Title], [Director], [Description] FROM [Movies] WHERE ([Director] = @Director)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Director" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Director] FROM [Movies]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
