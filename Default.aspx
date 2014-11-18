<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" culture="auto:en-US" UICulture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="margin-left: 149px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblName" runat="server" Text="My name is:" meta:resourceKey="lblName"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblGender" runat="server" Text="I am:" meta:resourceKey="lblGender"></asp:Label>
        <asp:RadioButton ID="btnFemale" runat="server" Text="Female" meta:resourceKey="btnFemale"/>
        <asp:RadioButton ID="btnMale" runat="server" Text="Male" meta:resourceKey="btnMale"/>
        <br />
        <asp:Label ID="lblGraddate" runat="server" Text="I plan to graduate on:" meta:resourceKey="lblGraddate"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Label ID="lblSalary" runat="server" Text="When I graduate, I hope to earn" meta:resourceKey="lblSalary"></asp:Label>
&nbsp;<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" meta:resourceKey="btnSubmit"/>
    
    </div>
    </form>
</body>
</html>
