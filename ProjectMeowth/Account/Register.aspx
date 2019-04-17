<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectMeowth.Account.Register" %>


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

        select {
          width: 100%;
          padding: 16px 20px;
          border: none;
          border-radius: 4px;
          background-color: #f1f1f1;
          font-size: 15px !important;
        }
    </style>

    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <p class="text-success">
        <asp:Literal runat="server" ID="SuccessMessage" />
    </p>

    <div class="form-div">
    <h2><%: Title %></h2>

        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        
        <div>
            <asp:Label runat="server" AssociatedControlID="TrainerName" >Trainer Name</asp:Label>
            <asp:TextBox runat="server" ID="TrainerName" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TrainerName" CssClass="text-danger" ErrorMessage="The Trainer Name is a Required Field." />
        </div>

        <div>
            <asp:Label runat="server" AssociatedControlID="Email" >Email</asp:Label>
            <asp:TextBox runat="server" ID="Email" TextMode="Email" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                CssClass="text-danger" ErrorMessage="The email field is required." />
        </div>

        <div>
            <asp:Label runat="server" AssociatedControlID="TeamDropdown">Team</asp:Label>
            <asp:DropDownList ID="TeamDropdown" runat="server">
                <asp:ListItem text="(No Team)" value="1"></asp:ListItem>
                <asp:ListItem Text="Mystic" Value="2"></asp:ListItem>
                <asp:ListItem Text="Instinct" Value="3"></asp:ListItem>
                <asp:ListItem Text="Valor" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamDropdown" CssClass="text-danger" ErrorMessage="The Team is a Required Field." />
        </div>

        <div>
            <asp:Label runat="server" AssociatedControlID="Experience">Current EXP</asp:Label>
            <asp:TextBox runat="server" ID="Experience" TextMode="Number"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Experience"
                CssClass="text-danger" ErrorMessage="The Current EXP field is required." />
        </div>
        <div>
            <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                CssClass="text-danger" ErrorMessage="The password field is required." />
        </div>

        <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />

        <div>
            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="registerbtn" />
        </div>
    </div>
</asp:Content>