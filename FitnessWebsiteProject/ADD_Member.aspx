<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADD_Member.aspx.cs" Inherits="FitnessWebsiteProject.ADD_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Admin.css"/>
    <title>Add</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
    <style type="text/css">
        .auto-style1 {
            width: 30%;
        }
        .auto-style2 {
            width: 41%;
        }
    </style>
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
                <h1>Add Member</h1>
            </div>
        </div>
    </div>
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1"> First Name :</td>
                    <td><asp:TextBox ID="FirstName" runat="server" Width="240px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style1"> Last Name :</td>
                    <td><asp:TextBox ID="LastName" runat="server" Width="243px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style1">  UserName :</td>
                    <td><asp:TextBox ID="UserName" runat="server" Width="243px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style1"> Password :</td>
                    <td><asp:TextBox ID="Password" runat="server" Width="245px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style1"> Email :</td>
                    <td><asp:TextBox ID="Email" runat="server" Width="243px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td colspan="2" align="center"> 
                        <asp:Button ID="ADD" runat="server" Text="ADD" OnClick="ADD_Click" Width="344px" />

                    </td>
                     
                </tr>
                
            </table>
            
        </div>
    </form>
</body>
</html>
