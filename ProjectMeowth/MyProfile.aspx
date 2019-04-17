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

        .form-div {
            text-align: center;
        }
        #friendsList{
            background: gray;
            width: 20%;
            text-align: center;
            margin-top: 50px;
            color: white;
        }
        .friends{
            background: white;
            width: 20%;
            float: left;
            height: 100px;
        }
        .panel{
            margin-top: 50px;
        }
        #leftPanel{
            background-color: #FFE53B;
background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);
            width: 20%;
            height: 310px;
            color: lightgray;
            float: left;
            margin-bottom: 0;
            padding-bottom: 0;
        }
        #rightPanel{
            width: 60%;
            height: 450px;
            background-color: #FFE53B;
background-image: linear-gradient(147deg, #FFE53B 0%, #FF2525 74%);
            margin-left: 218px;
            margin-bottom: 0;
            padding-bottom:0;
        }
        .pokemonFav {
            width: calc(85% / 6);
            border: none;
            height: 70px;
            margin: 0 3px 6px;
            overflow: hidden;
            justify-content: center;
            align-items: center;
            display: flex;
            border-radius: 1px;
            background:  linear-gradient(to bottom, rgba(252,252,252,1) 0%, rgba(189,189,189,1) 100%);
            position: relative;
            float: left;
            margin-top: 30px;
            margin-left: 10px;
        }
        .pokemonFav img{
            image-rendering: optimizeQuality;
            max-width: 95%;
            width: 90%;
            transform: scale(1.1);
            position: relative;
            filter: contrast (1.1);
            opacity: 0.8;
            border: 2px groove black;
        }
        .avatar{
            width: 60%;
            height: 35%;
            background:  linear-gradient(to bottom, rgba(252,252,252,1) 0%, rgba(189,189,189,1) 100%);
            margin-left: 15px;
            margin-top: 15px;
            border-radius: 5px;
            border-color: darkred;
            border-style: solid double;
        }
        #leftPanel span{
            color: black;
            font-size: 15px;
            margin-top: 20px;
            margin-left: 15px;
        }
        #leftPanel button{
            margin-left: 15px;
            color: black;
        }
        .avatar img{
            image-rendering: optimizeQuality;
            max-width: 85%;
            transform: scale(1.1);
            position: relative;
            max-height: 85%;
            margin-left: 10px;
            margin-top: 7px;
        }
        .achievements {
            height: 80px;
            text-align: left;
            margin-left: 100px;
            padding-top: 5px;
            margin-top:100px;
        }
        .achievements span{
            font-size: 20px;
           
            margin-right:100px;
        }
        .awards {
            height: 50px;
            width: 20px;
            display: inline-block;
            overflow: visible;
            cursor: pointer;
            position: relative;
        }
        .awards img{
            height: 100%;
            margin-top: 0px;
            
        }
        .awards:nth-child(even){
            position: relative;
            top: 40px;
        }
        img {
            vertical-align: middle;
            border: 0;
        }
        hr {
            width: 100%;
        }
        .recentPosts {
            font-size: 24px;
            width: 60%;
            background: gray;
            margin-left: 218px;
            color: white;
            text-align: center;
            float: none;
        }
        .recent {
            background: white;
            width: 60%;
            height: 500px;
            margin-left: 218px;
            margin-top: 5px;
        }
        .recent span{
            font-size: 30px;
            color: black;
            margin-left: 15px;
        }
        .recent p{
            margin-left: 15px;
            font-size: 15px;
        }
        .trainerCard{
            margin: 10px 1px 27px 11px;
            padding-bottom: 0;
            color: white;
            position: relative;
        }
        .trainerCard h1 {
            color: Black;
            letter-spacing: 0.02em;
            text-indent: -10px;
            margin: -2px 0 0;
            float: left;
            padding-bottom: 0px;
            font-size: 18px;
            line-height: 1em;
            border-bottom: 1px solid black;
            margin-left: 15px;
        }
        .trainerCard span {
            color: black;
            text-transform: uppercase;
            font-size: 13px;
            float: right;
            letter-spacing: 2.5px;
            padding: 0px 0 2px;
            line-height: 1em;
            border-bottom: 1px solid black;
            margin-right: 15px;
        }
    </style>

    <asp:LoginView runat="server" ViewStateMode="Disabled">
        <AnonymousTemplate>
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
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:Panel ID="loginUser" runat="server" Visible="true">

            </asp:Panel>
            <asp:Panel ID="registerUser" runat="server" Visible="true">
 
            </asp:Panel>
            <asp:Panel ID="authorizedUser" runat="server" Visible="true">
               <div id="content" class="container">
                    <div id="leftPanel" class="panel">
                        <div class="avatar">
                            <img src="Content/Images/POGOGAKKONew.png" />
                        </div>
                        <hr />
                        <span>Trainer Name: <%: PlayerName %></span>
                        <hr />
                        <span>Lvl: <%: Level %></span>
                        <hr />
                        <span>Experience: <%: GameExperience %></span>
                        <hr />
                        <span>Team: <%: TeamName %></span>
                        <hr />
                        <button>Add</button>
                    </div>
                   <div id="rightPanel" class="panel">
                       <div class="trainerCard">
                           <h1>POGO GAKKŌ</h1>
                           <span>Trainer Card</span>
                       </div>
                       <div id="topPokemon">
                           <div class="pokemonFav">
                               <img src="Content/img/pokemon/745.png"/>
                           </div>
                           <div class="pokemonFav">
                               <img src="Content/img/pokemon/94.png" />
                           </div>
                           <div class="pokemonFav">
                               <img src="Content/img/pokemon/430.png" />
                           </div>
                           <div class="pokemonFav">
                               <img src="Content/img/pokemon/52.png" />
                           </div>
                           <div class="pokemonFav">
                               <img src="Content/img/pokemon/143.png" />
                           </div>
                           <div class="pokemonFav">
                               <img src="Content/img/pokemon/405.png" />
                           </div>
                       </div>
                       <div class="achievements">
                           
                           <div>
                               <hr />
                                <span>Achievements: </span>
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           <div class="awards">
                               <img src="https://assets.thesilphroad.com/img/badges/black.png" />
                           </div>
                           
                   </div>
                       </div>
                            <div id="friendsList">
                                <h2>Friends List</h2>
                            </div>
                            <div class="friends">
                            </div>
                      <div class="recentPosts">
                          <span>Recent Posts</span>
                      </div>
                      <div class ="recent">
                          <span class="head">LOOKING FOR Bellsprout</span>
                          <hr />
                          <p>Looking for a bellsprout, trades are can be discussed.</p>
                          <hr />
                      </div>
                </div>
            </asp:Panel>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>

