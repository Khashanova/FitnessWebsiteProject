<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="FitnessWebsiteProject.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
</head>

<link rel="stylesheet" href="Main.css"/>

<body>

    <div class="ResiterForm">          
        <form runat="server" class="form1">
           <Label >UserName</Label>  
           <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            
            <Label >FirstName</Label>
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>

            <Label >LastName</Label>
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
  
            <Label  >Password</Label>
            <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
      
            <Label >Email</Label>
            <asp:TextBox  ID="Email" runat="server"></asp:TextBox>


            <asp:Button ID="Register" runat="server" OnClick = "RegOnClick" Text="Register" />
        </form>
      </div>
</body>

</html>
