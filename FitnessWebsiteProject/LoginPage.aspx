<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FitnessWebsiteProject.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>LogInPage</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
</head>
<link rel="stylesheet" href="Main.css"/>

<body>

    <div class="Login_Form" >
        <form id="form1" runat="server">
            <label for="UserName">UserName:</label>
            <asp:TextBox ID="UserName" runat="server" Placeholder="UserName..."></asp:TextBox>
            
            <label for="password">Password:</label>
            <asp:TextBox ID="Password" TextMode="Password" runat="server" Placeholder="Password..."></asp:TextBox>
            <asp:Button ID="Loginn" runat="server" OnClick = "LoginOnClick" Text="Login" />
            <asp:Button ID="Register" runat="server" OnClick = "RegisterOnClick" Text="Register" />
            <asp:DropDownList ID="DropDownList" runat="server">
                                    <asp:ListItem>Adminstrator</asp:ListItem>
                                    <asp:ListItem>Member</asp:ListItem>
           </asp:DropDownList>
            
        </form>
    </div>
</body>
</html>
