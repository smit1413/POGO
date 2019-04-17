<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectMeowth.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

        <style>
        input {
            width: 100% !important;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
            max-width: 123123px !important;
            font-size: 15px !important;
        }

        label {
            font-size: 20px !important;
            font-weight: 100 !important;
        }

        input:focus {
            background-color: #ddd;
            outline: none;
        }

        .registerbtn {
          background-color: #FF9742;
          color: white;
          padding: 16px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
          opacity: 0.9;
        }

        .registerbtn:hover {
          opacity:1;
        }

        .registerLink {
            color: #ffab40;
            text-transform: uppercase;
            transition: color .3s ease;
            font-size: 15px !important;
        }

        .registerLink:hover {
            color: #ffd8a6;
        }

        select {
          width: 100%;
          padding: 16px 20px;
          border: none;
          border-radius: 4px;
          background-color: #f1f1f1;
          font-size: 15px !important;
        }

        input[type="checkbox"] {
            height: 15px;
            width: 15px;
        }

        p {
            color: black;
        }

    </style>


    <div class="row form-div">
        <div class="col-md-8 border-right">
            <section id="loginForm">
                <div>
                    <h4>Use a local account to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <div >
                        <asp:Label runat="server" AssociatedControlID="Email">Email</asp:Label>
                        <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                    </div>

                    <div >
                        <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password"  />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>

                    <div ID="LoginAnimation">
                        <!-- Credit to https://whatpixel.com/pure-html-css-pokemon/ -->
                        <div id="pikachu"></div>
                        <div id="ash"></div>
                    </div>
                    <div>
                        <div class="checkbox">
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                        </div>
                    </div>

                    <div>
                        <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="registerbtn" />
                    </div>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" CssClass="registerLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </div>
                
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
            


        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>

     </div>

</asp:Content>
