<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MeetingScheduler.aspx.cs" Inherits="MeetingScheduler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Calendar ID="calMeetings" runat="server" OnSelectionChanged="calMeetings_SelectionChanged" OnDayRender="calMeetings_DayRender"></asp:Calendar>
     <asp:TextBox ID="txtSchedule" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSchedule" ErrorMessage="Error: You must enter a message" ForeColor="Red"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
