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

 







    </style>
    <h2>Raids</h2>
    <h3>Current Raid Bosses</h3>
    <%--Testing manual table setup --%>
    <asp:Table id="tableRaid" runat="server" BorderStyle="Solid" BorderColor="#663300" Width="50%" BorderWidth="0.2em">
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
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Giratina (Altered Forme)" ImageUrl="~/Image/Giratinadef.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Giratina (Altered Forme)</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                34987
            </asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Deoxys (Defense Forme)" ImageUrl="~/Image/Deoxysdef.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Deoxys (Defense Forme)</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                33018
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Absol" ImageUrl="~/Image/Absol.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Absol</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                26262
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Togetic" ImageUrl="~/Image/Togetic.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Togetic</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                18671
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Houndoom" ImageUrl="~/Image/Houndoom.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Houndoom</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                26099
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Dragonite" ImageUrl="~/Image/Dragonite.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Dragonite</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                35137
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Alolan Marowak" ImageUrl="~/Image/Alolan_Marowak.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Alolan Marowak</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                19522
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Machamp" ImageUrl="~/Image/Machamp.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Machamp</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                17990
            </asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Piloswine" ImageUrl="~/Image/Piloswine.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Piloswine</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                13278
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Granbull" ImageUrl="~/Image/Granbull.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Granbull</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                15023
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Gengar" ImageUrl="~/Image/Gengar.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Gengar</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                19359
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Alolan Raichu" ImageUrl="~/Image/Alolan_Raichu.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Alolan Raichu</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                15380
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Sneasel" ImageUrl="~/Image/Sneasel.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Sneasel</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                10981
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Mawile" ImageUrl="~/Image/Mawile.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Mawile</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                9008
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Misdreavus" ImageUrl="~/Image/Misdreavus.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Misdreavus</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                10038
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Sableye" ImageUrl="~/Image/Sableye.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Sableye</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                8132
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Alolan Exeggutor" ImageUrl="~/Image/Alolan_Exeggutor.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Alolan Exeggutor</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                13472
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Snorunt" ImageUrl="~/Image/Snorunt.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Snorunt</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                2825
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Drifloon" ImageUrl="~/Image/Drifloon.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Drifloon</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                3151
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Bagon" ImageUrl="~/Image/Bagon.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Bagon</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                3792
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="TableCell">
                <%--Testing manually setting img --%>
                <asp:Image runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" CssClass="Raid"/>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCellMiddle">
                <%--Could add image for each pokemon--%>
                <asp:Image runat="server" AlternateText="Shinx" ImageUrl="~/Image/Shinx.png" CssClass="PokemonImage"/><br />
                <div class="pokemonName">Shinx</div>
            </asp:TableCell>
            <asp:TableCell CssClass="TableCell">
                2873
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
    <%--<iframe src="https://discordapp.com/widget?id=200837505145110528&theme=light" height="500"></iframe>--%>
</asp:Content>
