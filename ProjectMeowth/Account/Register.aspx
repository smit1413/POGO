<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectMeowth.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <p class="text-success">
        <asp:Literal runat="server" ID="SuccessMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TrainerName" CssClass="col-md-2 control-label">Trainer Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TrainerName" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TrainerName" CssClass="text-danger" ErrorMessage="The Trainer Name is a Required Field." />
            </div> 
            </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
            <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TeamDropdown" CssClass="col-md-2 control-label">Team</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="TeamDropdown" runat="server" CssClass="form-control">
                    <asp:ListItem text="(No Team)" value="1"></asp:ListItem>
                    <asp:ListItem Text="Mythic" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Instinct" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Valor" Value="4"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamDropdown" CssClass="text-danger" ErrorMessage="The Team is a Required Field." />
            </div>
                </div>
        <div class="form-group"> 
            <asp:Label runat="server" AssociatedControlID="Experience" CssClass="col-md-2 control-label">Current EXP</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Experience" TextMode="Number" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Experience"
                    CssClass="text-danger" ErrorMessage="The Current EXP field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>