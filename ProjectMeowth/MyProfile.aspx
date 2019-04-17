<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="ProjectMeowth.MyProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .button {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border: 1px solid transparent;
            padding: .375rem .75rem;
            font-size: 25px;
            line-height: 1.5;
            border-radius: .25rem;
            transition: opacity .15s ease;
            color: #fff;
            background-color: #FF9742;
            border-color: #FF9742;
            width: 50%;
            opacity: 0.9;
        }

        .button a {
            text-decoration: none;
        }

        .button:hover {
            color: #fff;
            opacity: 1;
        }

        .button:hover a {
            text-decoration: none;
            color: #fff;
        }

        #MainContent_unauthorizedUser {
            text-align: center;
        }

    </style>

    <asp:Panel ID="unauthorizedUser" runat="server" Visible="true" CssClass="form-div">
        <h2>Please Log in, or Register</h2>
        <br />
            <h3>
                <a class="button" href="Account/Login.aspx">Log In</a>
            </h3>

            <h3>
                <a class="button" href="Account/Register.aspx">Register</a>
            </h3>
        <br />

        
    </asp:Panel>
<asp:Panel ID="authorizedUser" runat="server" Visible="false">
        <div id="mainButtonWrap" class="text-center">
            <asp:Button id="updateDetailsBtn" CssClass="btn" Text="Edit" runat="server"/>
            <a href="logout.aspx" id="logoutBtn" class="btn">Logout</a>
        </div>
        <div class="front">
            <div id="leftPane" class="panel">
                <div style="position:absolute;top: 0;left: 0;right: 0;bottom: 0;"></div>
                <div style="background: #333745; background: #544b45;background: #ebc23f;height: 76%;padding: 10px;position: absolute;bottom: 0;left: 0;right: 0;box-shadow: 0 0 23px -2px #00001f;text-alight: center;">
                    <div id="avatarWrap">
                        <img src="https://assets.thesilphroad.com/img/user-avatars/backpacker_m_1.png" data-pin-nopin="true" style="max-width: 100%;padding-left: 0px;image-rendering: pixelated;margin-right: -18px;margin-left: -10px; height: 90px;" />
                        <h2>
                            <span>Lvl</span>
                        </h2>
                    </div>
                    <img src="http://assets.thesilphroad.com/img/icons/Place.png"
                        style="opacity: 0.3;height: 26px; position: relative;top: 0;
                        padding-right: 4px; float: left;margin: 0.9em 0 0;"/>
                    <h3>Location</h3>
                    <hr style="margin: 11px -10px 12px;
                        border-top: 3px double #caa739;" />
                    <h3>Trainer</h3>
                    <h3>TrainerName</h3>
                    <hr style="margin: 11px -10px 12px;
                        border-top: 3px double #caa739;" />
                    <h4>EXP: [Amount]
                    </h4>
                    <h4 style=" font-family: 'texgyreadventorbold';
                                font-size: 13px;
                                letter-spacing: .1em;
                                text-align: center;
                                background: #8e7a47;
                                color: #dbb641;
                                margin: 11px -10px;
                                padding: 10px 8px 12px;
                                position: relative;
                                overflow: hidden;
                                "class="team-label mystic">Team Mystic</h4>
                </div>
                </div>
            <div class="panel" id="trainerCard" style="flex:1;border-radius:0;border-top-right-radius:8px;border-bottom-right-radius:8px;">
                <div id="backgroundColour" style="position:absolute;top:0;bottom:0;left:0;right:0;background:rgba(255, 248, 226, 0.8);z-index:1;"</div>

            </div>
            </div> 
    </asp:Panel>
</asp:Content>

