<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUploadDemo.aspx.cs" Inherits="FileUploadDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="fupUpload" runat="server" />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    
    </div>
        <asp:DataList ID="dlstImages" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" style="width:200px" 
                ImageUrl='<%# Eval("Name", "~/UploadedImages/{0}") %>' /><br />
                <%# Eval("Name") %><br />
                <a href='FileUploadDemo.aspx?fileToDelete=<%# Eval("Name")%>'>Delete</a> 
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
