<%@ Page Title="Raids" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raids.aspx.cs" Inherits="ProjectMeowth.Raids" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        h2, h3{
            color:#FF9742;
        }
        .Raid{
            width:20px;
            height:20px;
        }

        .TableHeader{
            font-size:15px;
            color:#FF9742;
        }
        
        .TableCell{
            padding-bottom:20px;
            color:#FF9742;
            font-size:15px;
            font-weight:bold;
        }

        .TableCellMiddle{
            padding-bottom:20px;
            color:#FF9742;
            font-size:13px;
            font-weight:bold;
        }

        .PokemonImage{
            width:50px;
            height:50px;
            display:inline;
        }

        .RaidTable{
            border-color:#663300;
            border-width:0.2em;
            width:50%;
            border-style:solid;
        }
 







    </style>
    <h2>Raids</h2>
    <h3>Current Raid Bosses</h3>
    <%--Raid Boss have to be manually updated --%>
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
        </asp:TableRow>

    </asp:Table>
    <iframe src="https://discordapp.com/widget?id=200837505145110528&theme=light" height="300"></iframe>

    <!--<iframe src="https://valendres.github.io/react-discord-widget/?serverId=200837505145110528" width="260" height="300" showHeader="false" showChannelIcon ="true"></iframe>-->
</asp:Content>
