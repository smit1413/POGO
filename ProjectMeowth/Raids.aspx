<%@ Page Title="Raids" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raids.aspx.cs" Inherits="ProjectMeowth.Raids" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Raids</h2>
    <h3>Current Raid Bosses</h3>
    <asp:Table id="tableRaid" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                Tier 
            </asp:TableCell>
            <asp:TableCell>
                Name
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Image id="imgRaid" runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" Width ="20px" Height="20px"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
