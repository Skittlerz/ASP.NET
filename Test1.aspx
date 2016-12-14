<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbEmp12ConnectionString2 %>" SelectCommand="SELECT * FROM [Jobs]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbEmp12ConnectionString2 %>" SelectCommand="SELECT [EmployeeId], [FirstName], [LastName] FROM [Employees] WHERE ([JobCode] = @JobCode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlJobs" Name="JobCode" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DropDownList ID="ddlJobs" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="JobDescription" DataValueField="JobCode">
        </asp:DropDownList>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
             <ItemTemplate>
                <h4>Employee ID: <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("EmployeeId") %>' /></h4>
                <br />
                First Name:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                Last Name:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:Label ID="lblJob" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="Add Job" />
    </form>
</body>
</html>
