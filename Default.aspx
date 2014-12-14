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
        <div class="jumbotron">
            <h1>Welcome to MSCI:3300</h1>
            <h3>Software Design and Development</h3>
        </div>
        <nav class="navbar navbar-default">   
    <div>
      <ul class="nav navbar-nav">
        <li><a href="default.aspx">Home</a></li>
      </ul>
    </div>
  
</nav>
        <form id="form1" runat="server" role="form">
    
     <div class="row"> 
        <div class="panel panel-default col-md-3">

               <div class="panel-body">
                 <asp:Label ID="lblLanguageSelect" runat="server" Text="Please choose a language"></asp:Label>
                    <asp:DropDownList ID="drpLang" runat="server" AutoPostBack ="true" >
                    <asp:ListItem Value="en-US">English</asp:ListItem>
                    <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                    <asp:ListItem Value="zh-CN">Chinese (Simplified)</asp:ListItem>
                    <asp:ListItem Value="ar-EG">Arabic</asp:ListItem>
                    </asp:DropDownList>
                </div> 
            </div> <!-- panel-default -->  
         
        <div id="maindisplay" runat="server" class="panel panel-default col-md-9">
            <div class="form-group ">
       
            <asp:Label ID="lblName" runat="server" Text="My name is:" meta:resourceKey="lblName"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            
             <div class="form-group">
                <asp:Label ID="lblGender" runat="server" Text="I am:" meta:resourceKey="lblGender"></asp:Label>
                <asp:RadioButton ID="btnFemale" runat="server" Text="Female" meta:resourceKey="btnFemale" GroupName="gender"/>
                <asp:RadioButton ID="btnMale" runat="server" Text="Male" meta:resourceKey="btnMale" GroupName="gender"/>
            </div>
                <asp:Label ID="lblGraddate" runat="server" Text="I plan to graduate on:" meta:resourceKey="lblGraddate"></asp:Label>
            
            <asp:Calendar ID="cal" runat="server" Width="331px"></asp:Calendar>
            <div class="form-group">
            <asp:Label ID="lblSalary" runat="server" Text="When I graduate, I hope to earn" meta:resourceKey="lblSalary"></asp:Label>
    &nbsp;<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="rfvSal" runat="server" ErrorMessage="*" ControlToValidate="txtSalary" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" meta:resourceKey="btnSubmit"/>
            </div>
              <!--      <div class="col-md-3">
                        <asp:Label ID="Label2" runat="server" Text="Please choose a language"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack ="true" >
                            <asp:ListItem Value="en-US">English</asp:ListItem>
                            <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                            <asp:ListItem Value="zh-CN">Chinese (Simplified)</asp:ListItem>
                            <asp:ListItem Value="ar-EG">Arabic</asp:ListItem>
                        </asp:DropDownList>
                    </div> -->
         </div>  
                    <div id="pb" runat="server" class="panel panel-default col-md-9" style="display:none">
                        <br />
                        <asp:Label ID="lblGreeting" runat="server" Text="Hello " meta:resourceKey="lblGreeting"></asp:Label><asp:Label ID="lblTitle" runat="server" Text="[Mr/Ms]" meta:resourceKey="lblTitle"></asp:Label>
                        <asp:Label ID="lblNameOutput" runat="server" Text="" meta:resourceKey="lblNameOutput"></asp:Label>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" Text="I hope you have a great day when you graduate on " meta:resourceKey="lblMessage"></asp:Label><asp:Label ID="lblDateOutput" runat="server" Text="" meta:resourceKey="lblDateOutput"></asp:Label><br />
                        <asp:Label ID="lblMsgSalaryOutput" runat="server" Text="I wish you well in your career after graduation. I hope you earn " meta:resourceKey="lblMsgSalaryOutput">

                        </asp:Label><asp:Label ID="lblMoneyVar" runat="server" Text="{money}" meta:resourceKey="lblMoneyVar"></asp:Label><asp:Label ID="lblMsgSalary2" runat="server" Text=" as your salary in your first job!" meta:resourceKey="lblMsgSalary2"></asp:Label>
                        <br />
                        <asp:Label ID="lblVisitMe" runat="server" Text="Please visit me on " meta:resourceKey="lblVisitMe"></asp:Label> <a href="https://github.com/c0llin">GitHub</a>
                    </div>      
                </div> <!-- row  -->  
            </form>
        </div> <!--containter -->
    </body>
</html>
