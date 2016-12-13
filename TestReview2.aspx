<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestReview2.aspx.cs" Inherits="TestReview2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" 
            runat="server" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
            <a href='TestReview2.aspx?id=<%#Eval("Id") %>'> <%#Eval("Title") %></a>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" 
            runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" 
            SelectCommand="SELECT [Title], [Id] FROM [Movies]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyField="Id" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:CheckBoxField DataField="InTheaters" HeaderText="InTheaters" SortExpression="InTheaters" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT Title, Director, InTheaters, Description FROM Movies WHERE (Id = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
