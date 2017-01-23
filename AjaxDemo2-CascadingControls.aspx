<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDemo2-CascadingControls.aspx.cs" Inherits="AjaxDemo2_CascadingControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:SqlDataSource ID="SqlGenres" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [MovieCategories]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlTitle" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Title], [Id] FROM [Movies] WHERE ([CategoryId] = @CategoryId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlMovie" runat="server" ConnectionString="<%$ ConnectionStrings:dbMovies12ConnectionString %>" SelectCommand="SELECT [Description] FROM [Movies] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
        <br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlGenres" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlTitle" DataTextField="Title" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlMovie">
            <ItemTemplate>
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                <br />
            </ItemTemplate>
    </asp:DataList>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
