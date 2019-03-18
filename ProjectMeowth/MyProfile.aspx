<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="ProjectMeowth.MyProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="unauthorizedUser" runat="server" Visible="true">
        <h2>Please Log in, or Register</h2>
        <br />
            <h3><a href="Account/Login.aspx">Log In</a></h3>
            <h3><a href="Account/Register.aspx">Register</a></h3><br />

        
    </asp:Panel>
    <asp:Panel ID="loginUser" runat="server" Visible="false">

    </asp:Panel>
    <asp:Panel ID="registerUser" runat="server" Visible="false">
 
    </asp:Panel>
    <asp:Panel ID="authorizedUser" runat="server" Visible="false">
        
    </asp:Panel>
</asp:Content>

