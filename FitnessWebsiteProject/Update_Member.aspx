<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Member.aspx.cs" Inherits="FitnessWebsiteProject.Update_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Admin.css"/>
       <title>Update</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
       <style type="text/css">
           .auto-style1 {
               width: 879px;
           }
           .auto-style2 {
               width: 28%;
           }
           .auto-style3 {
               margin-left: 0;
           }
           .auto-style4 {
               width: 5%;
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
                <h1>Update Member</h1>
            </div>
        </div>
    </div>
    <br />
    <br />
<form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4"> First Name: </td>
                    <td class="auto-style1"><asp:TextBox ID="FirstName" runat="server" Width="238px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style4"> Last Name: </td>
                    <td class="auto-style1"><asp:TextBox ID="LastName" runat="server" Width="240px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style4">  UserName: </td>
                    <td class="auto-style1"><asp:TextBox ID="UserName" runat="server" Width="245px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style4"> Password: </td>
                    <td class="auto-style1"><asp:TextBox ID="Password" runat="server" Width="244px"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style4"> Email: </td>
                    <td class="auto-style1"><asp:TextBox ID="Email" runat="server" Width="245px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td colspan="2" align="center"> 
                        <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" CssClass="auto-style3" Height="35px" Width="275px" />

                    </td>
                     
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label1" runat="server" Text="Please Enter ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TheMemberId" runat="server" Width="245px"></asp:TextBox>
                    </td>

                </tr>
                
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
