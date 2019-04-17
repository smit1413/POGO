<%@ Page Title="Raids" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raids.aspx.cs" Inherits="ProjectMeowth.Raids" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">

    .table-title h3 {
       color: #fafafa;
       font-size: 30px;
       font-weight: 400;
       font-style:normal;
       font-family: "Roboto", helvetica, arial, sans-serif;
       text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
       text-transform:uppercase;
    }


    /*** Table Styles **/

    .table-fill {
      background: white;
      border-radius:3px;
      border-collapse: collapse;
      height: 320px;
      margin: auto;
      padding:5px;
      width: 100%;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
      animation: float 5s infinite;
    }
 
    .TableHeader {
      color:#D5DDE5;
      background:#d35400;
      border: none;
      font-size:23px;
      font-weight: 100;
      padding:24px;
      text-align:left;
      text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
      vertical-align:middle;
    }

    .TableHeader:first-child {
      border-top-left-radius:3px;
    }
 
    .TableHeader:last-child {
      border-top-right-radius:3px;
      border-right:none;
    }
  
    tr {
      border-top: 1px solid #C1C3D1;
      border-bottom-: 1px solid #C1C3D1;
      color:#666B85;
      font-size:16px;
      font-weight:normal;
      text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
    }
 
    tr:hover td {
      background:#d35400;
      color:#FFFFFF;
    }
 
    tr:first-child {
      border-top:none;
    }

    tr:last-child {
      border-bottom:none;
    }
 
    tr:nth-child(odd) td {
      background:#EBEBEB;
    }
 
    tr:nth-child(odd):hover td {
      background:#e67e22;
    }

    tr:last-child td:first-child {
      border-bottom-left-radius:3px;
    }
 
    tr:last-child td:last-child {
      border-bottom-right-radius:3px;
    }
 
    td {
      background:#FFFFFF;
      padding:20px;
      text-align:left;
      vertical-align:middle;
      font-weight:300;
      font-size:18px;
      text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
    }

    td:last-child {
      border-right: 0px;
    }

    th.text-left {
      text-align: left;
    }

    th.text-center {
      text-align: center;
    }

    th.text-right {
      text-align: right;
    }

    td.text-left {
      text-align: left;
    }

    td.text-center {
      text-align: center;
    }

    td.text-right {
      text-align: right;
    }

    .Raid{
        width:30px;
        height:30px;
        border-radius: 50%;
        background-color: #d35400;
        margin: 3px;
    }
            
    .PokemonImage{
        width:50px;
        height:50px;
        display:inline;
    }

    table {
        width: 100%;
    }

    .discord {
        margin-top: 40px;
        
    }

    </style>
    
    <%--Raid Boss have to be manually updated --%>

    <div class="row">

        <div class="col-md-8">
        <div class="table-title">
            <h3>Current Raid Bosses</h3>
        </div>
        <asp:Table id="tableRaid" runat="server" CssClass="RaidTable">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell CssClass="TableHeader">
                    Boss Tier 
                </asp:TableHeaderCell>
                <asp:TableHeaderCell CssClass="TableHeader">
                    Raid Boss
                </asp:TableHeaderCell>
                <asp:TableHeaderCell CssClass="TableHeader">
                    Boss CP
                </asp:TableHeaderCell>
                <asp:TableHeaderCell CssClass="TableHeader">
                    Weaknesses
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Giratina (Original Forme)" ImageUrl="~/Image/GiratinaOriginal.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Giratina (Original Forme)</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    34987
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Dark, Ice, Dragon, Fairy, Ghost
                </asp:TableCell>
            </asp:TableRow>
                    <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Deoxys (Defense Forme)" ImageUrl="~/Image/Deoxysdef.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Deoxys (Defense Forme)</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    33018
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Bug, Dark, Ghost
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Tyranitar" ImageUrl="~/Image/tyranitar.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Tyranitar</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    26262
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Ground, Fighting, Bug, Grass, Fairy, Steel, Water
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Absol" ImageUrl="~/Image/Absol.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Absol</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    26262
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Fighting, Bug, Fairy
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Ninjask" ImageUrl="~/Image/Ninjask.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Ninjask</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    18671
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Ice, Electric, Rock, Flying, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Alolan Marowak" ImageUrl="~/Image/Alolan_Marowak.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Alolan Marowak</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    19522
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Water, Rock, Ground, Ghost, Dark
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Machamp" ImageUrl="~/Image/Machamp.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Machamp</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    17990
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Psychic, Fairy, Flying
                </asp:TableCell>
            </asp:TableRow>
                    <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Scyther" ImageUrl="~/Image/Scyther.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Scyther</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    13278
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Flying, Ice, Electric, Rock, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Pinsir" ImageUrl="~/Image/Pinsir.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Pinsir</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    15023
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Flying, Rock, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Shuckle" ImageUrl="~/Image/Shuckle.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Shuckle</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    19359
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Water, Rock, Steel
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Alolan Raichu" ImageUrl="~/Image/Alolan_Raichu.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Alolan Raichu</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    15380
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Dark, Ground, Ghost, Bug
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Masquerain" ImageUrl="~/Image/Masquerain.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Masquerain</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    10981
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Ice, Electric, Rock, Flying, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Mawile" ImageUrl="~/Image/Mawile.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Mawile</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    9008
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Ground, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Combee" ImageUrl="~/Image/Combee.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Combee</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    10038
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Ice, Electric, Rock, Flying, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Pineco" ImageUrl="~/Image/Pineco.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Pineco</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    8132
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Rock, Flying, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Kricketot" ImageUrl="~/Image/Kricketot.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Kricketot</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    3151
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Rock, Flying, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Caterpie" ImageUrl="~/Image/Caterpie.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Caterpie</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    3792
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Rock, Flying, Fire
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="TableCell">
                    <%-- Manually Setting Image--%>
                    <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCellMiddle">
                    <%-- Image of Pokemons--%>
                    <asp:Image runat="server" AlternateText="Shinx" ImageUrl="~/Image/Shinx.png" CssClass="PokemonImage"/><br />
                    <div class="pokemonName">Shinx</div>
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    2873
                </asp:TableCell>
                <asp:TableCell CssClass="TableCell">
                    Ground
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        </div>
        <div class="col-md-4 discord">
            <iframe src="https://discordapp.com/widget?id=200837505145110528&theme=light" height="600px"></iframe>
        </div>
    </div>

    <!--<iframe src="https://valendres.github.io/react-discord-widget/?serverId=200837505145110528" width="260" height="300" showHeader="false" showChannelIcon ="true"></iframe>-->
</asp:Content>
