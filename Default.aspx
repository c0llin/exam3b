<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" culture="auto:en-US" UICulture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam 3b </title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
<div class="container">   
     <form id="form1" runat="server">
    
     <div class="row"> 
        <%If Not IsPostBack Then%>
           <div class="col-md-3">
             <asp:Label ID="Label1" runat="server" Text="Please choose a language"></asp:Label>
                <asp:DropDownList ID="drpLang" runat="server" AutoPostBack ="true" >
                
                <asp:ListItem Value="en-US">English</asp:ListItem>
                <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                <asp:ListItem Value="zh-CN">Chinese (Simplified)</asp:ListItem>
                <asp:ListItem Value="ar-EG">Arabic</asp:ListItem>
                </asp:DropDownList>
            
        </div>   
        <div class="col-md-9">
       
            <asp:Label ID="lblName" runat="server" Text="My name is:" meta:resourceKey="lblName"></asp:Label>
    &nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblGender" runat="server" Text="I am:" meta:resourceKey="lblGender"></asp:Label>
            <asp:RadioButton ID="btnFemale" runat="server" Text="Female" meta:resourceKey="btnFemale" GroupName="gender"/>
            <asp:RadioButton ID="btnMale" runat="server" Text="Male" meta:resourceKey="btnMale" GroupName="gender"/>
            <br />
            <asp:Label ID="lblGraddate" runat="server" Text="I plan to graduate on:" meta:resourceKey="lblGraddate"></asp:Label>
            <br />
            <asp:Calendar ID="cal" runat="server" Width="331px"></asp:Calendar>
            <br />
            <asp:Label ID="lblSalary" runat="server" Text="When I graduate, I hope to earn" meta:resourceKey="lblSalary"></asp:Label>
    &nbsp;<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" meta:resourceKey="btnSubmit"/>
        <%Else%>
            <div class="col-md-3">
             <asp:Label ID="Label2" runat="server" Text="Please choose a language"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack ="true" >
                
                <asp:ListItem Value="en-US">English</asp:ListItem>
                <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                <asp:ListItem Value="zh-CN">Chinese (Simplified)</asp:ListItem>
                <asp:ListItem Value="ar-EG">Arabic</asp:ListItem>
                </asp:DropDownList>
            
        </div>  
        <div class="col-md-9">
            <br />
            <asp:Label ID="lblGreeting" runat="server" Text="Hello, Mr./Ms."></asp:Label><asp:Label ID="lblNameOuput" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="I hope you have a great day when you graduate on "></asp:Label><asp:Label ID="lblDateOutput" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblMsgSalaryOutput" runat="server" Text="I wish you well in your career after graduation. I hope you earn "></asp:Label><asp:Label ID="lblMoneyVar" runat="server" Text="{money}"></asp:Label><asp:Label ID="lblMsgSalary2" runat="server" Text=" as your salary in your first job!"></asp:Label>
            <br />
            <asp:Label ID="lblVisitMe" runat="server" Text="Please visit me on "></asp:Label> <a href="https://github.com/c0llin">GitHub</a>
        </div>
        <%End If %>
        </div>
    </div> <!-- row  -->  
       
    </form>
</div> <!--containter -->
</body>
</html>
