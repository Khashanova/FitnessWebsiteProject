<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDFpage.aspx.cs" Inherits="FitnessWebsiteProject.PDFpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .PDFPurchase {
            height: 499px;
        }
    </style>
</head>
    <link rel="stylesheet" href="Main.css"/>
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
                <h1>Supplements</h1>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="PDFPurchase" >
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [member] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="id" SessionField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            
            <script src="PurchaseSuccess.js"></script>
            <a href="PaymentSuccess.aspx">
                <asp:Button ID="Button1" runat="server" CausesValidation="False" Height="50px" Text="Proceed" Width="200px" OnClick="Button1_Click" /></a>
            
            
        </div>
    </form>
</body>
</html>
