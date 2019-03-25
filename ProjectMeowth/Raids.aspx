<%@ Page Title="Raids" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raids.aspx.cs" Inherits="ProjectMeowth.Raids" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Raids</h2>
    <h3>Current Raid Bosses</h3>
    <asp:Table id="tableRaid" runat="server" BorderStyle="Solid" BorderColor="#663300" Width="50%" BorderWidth="0.2em">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                Boss Tier 
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Raid Boss
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Boss CP
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <%--Testing manually setting img --%>
                <asp:Image id="imgRaid1" runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" Width ="20px" Height="20px"/>
                <asp:Image id="imgRaid2" runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" Width ="20px" Height="20px"/>
                <asp:Image id="imgRaid3" runat="server" AlternateText="Raid Tiers" ImageAlign="Left" ImageUrl="~/Image/Raid.png" Width ="20px" Height="20px"/>
            </asp:TableCell>
            <asp:TableCell>
                Example
            </asp:TableCell>
            <asp:TableCell>
                12548
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
