﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TimeTableManagement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="Style.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/family=Bitter|create+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <span>sign in with social network</span><br />
                    <br />
                    <a href="#" class="fb">Log in with Facebook</a>
                    <br />
                    <a href="#" class="tw">Log in with Twitter</a>
                    <br />
                    <a href="#" class="gl">Log in with Google</a>
                    <br />
                </div>
                <div class="inner2">
                    <h3>sign up</h3>
                    <asp:TextBox ID="txturname" placeholder="Username" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txturname" ErrorMessage="Please Enter Valid Username...!"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtemail" placeholder="E-mail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail" ErrorMessage="Please Enter Valid Email...!"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpasswd" ErrorMessage="Password must be 3 to 10 characters long" Display="Dynamic" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpasswd" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Enter Password...!"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtcops" placeholder="Retype Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtcops" ErrorMessage="Password Not Match...!" ControlToCompare="txtpasswd"></asp:CompareValidator>
                    
                    <br />
                    
                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn" Text="Sign Me Up" />

                    <asp:Label ID="Label1" Visible="false" runat="server" Text="You are Successfully Registered...!"></asp:Label>
                </div>
            </div>
        </section>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
</body>
</html>
