<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FitnessWebsiteProject.Profile" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <title>Profile</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
</head>

<link rel="stylesheet" href="Profile.css" />


<body>
    <div class="header">
        <div class="inner_header">
            <div class="logo_container">
                    <a href="HomePage.aspx">

                        <h1><span>O</span>fit</h1>
                    </a>
             </div>
            <ul class="nav">
                <a href="Profile.aspx">
                    <b>
                <li>Profile</li></b>
                </a>

                <a href="MathPage.aspx">
                    <b>
                <li>Math</li></b>
                </a>
                <a href="ExercisesPage.aspx">
                    <b>
                <li>Exercise</li></b>
                </a>
                <a href="MacrosPage.aspx">
                    <b>
                <li>Macros</li></b>
                </a>
                <a href="Store.aspx">
                    <b>
                <li>Store</li></b>
                </a>
                <a href="LoginPage.aspx">
                    <b>
                <li>LogOut</li></b>
                </a>
            </ul>

            <div class="maintitle">
                <h1>Profile</h1>
            </div>

        </div>
    </div>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [member] WHERE ([id] = @id)">
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
