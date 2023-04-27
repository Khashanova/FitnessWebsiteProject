<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DEL_Member.aspx.cs" Inherits="FitnessWebsiteProject.DEL_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Admin.css"/>
    <title>Delete</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
</head>
    
<body>
    <div class="header">
        <div class="inner_header">
            <div class="logo_container">
                    <a href="Admin_home.aspx">

                        <h1><span>O</span>fit</h1>
                    </a>
             </div>
            <ul class="nav">
                <a href="View_Member.aspx">
                    <b>
                <li>View-Users</li></b>
                </a>
                <a href="ADD_Member.aspx">
                    <b>
                <li>Add-User</li></b>
                </a>

                <a href="DEL_Member.aspx">
                    <b>
                <li>Delete-User</li></b>
                </a>
                 <a href="Update_Member.aspx">
                    <b>
                <li>Update</li></b>
                </a>
                <a href="LoginPage.aspx">
                    <b>
                <li>LogOut</li></b>
                </a>
            </ul>

            <div class="maintitle">
                <h1>Delete Member</h1>
            </div>
        </div>
    </div>
    <br />
    <br />
    <form id="form1" runat="server">
        <asp:GridView ID="Member_View" runat="server"></asp:GridView>
        <div>
            <table>
                <tr>
            <td colspan="2"><asp:Label ID="Label1" runat="server" Text="Label"> Enter Email:</asp:Label></td>
            <td colspan="2"><asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
                    </tr>
                <tr>
           <td><asp:Button ID="Button1" runat="server" Text="DELETE" OnClick="Button1_Click" /></td>
                </tr>
                    </table>    
        </div>

    </form>
    
</body>
</html>
