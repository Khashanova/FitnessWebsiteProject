<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Member.aspx.cs" Inherits="FitnessWebsiteProject.View_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Admin.css"/>
    <title>View</title>
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
                <h1>View Member</h1>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Member_View" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
