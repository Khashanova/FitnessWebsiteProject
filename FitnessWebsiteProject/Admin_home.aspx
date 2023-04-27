<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_home.aspx.cs" Inherits="FitnessWebsiteProject.Admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Admin.css"/>
    <title>Admin</title>
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
                <h1>Main</h1>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [Admins] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="id" SessionField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
            <ItemTemplate>

        <table>
            <tr>
                <td>
                    <asp:Label ID="UserName" runat="server" Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="UserName2" runat="server" Text='<%# Eval("UserName") %>' />
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="FirstName" runat="server" Text="FirstName"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="FirstName2" runat="server" Text='<%# Eval("FirstName") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LastName" runat="server" Text="LastName"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LastName2" runat="server" Text='<%# Eval("LastName") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Password2" runat="server" Text='<%# Eval("Password") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Email2" runat="server" Text='<%# Eval("Email") %>' />
                </td>
            </tr>
            
        </table>
                   </ItemTemplate>
    </asp:DataList>

        </div>
    </form>

 
    


</body>
</html>
