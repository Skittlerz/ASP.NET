<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FunWithRepeaters.aspx.cs" Inherits="FunWithRepeaters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="sqlMovieCats" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT * FROM [MovieCategories]"></asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sqlMovieCats">
            <ItemTemplate>
               <a href='FunWithRepeaters.aspx?id=<%#Eval("id") %>'><%#Eval("Name") %></a> | 
            </ItemTemplate>
        </asp:Repeater>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Director:
                <asp:Label ID="DirectorLabel" runat="server" Text='<%# Eval("Director") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Title], [Director], [Description], [Id] FROM [Movies] WHERE ([CategoryId] = @CategoryId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="CategoryId" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
