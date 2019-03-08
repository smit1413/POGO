<%@ Page Title="Pokédex" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pokedex.aspx.cs" Inherits="ProjectMeowth.Pokedex" %>

<asp:Content ID="HeaderPokedex" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .grid-item { width: 25%; background-color: lightblue; }
        .grid-item--width2 { width: 50%; background-color: coral; }
    </style>
</asp:Content>

<asp:Content ID="BodyContentPokedex" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Under Construction</h2>
    <h3>You have reached the - <%: Title %> page.</h3>
    <div class="container">
        <div class="button-group filter-button-group">

            <!-- NOTE: You must NOT use the button tag here, since it triggers a postback in ASP.NET -->
            <input type="button" class="btn btn-info" data-filter="*" value="Show All" />
            <input type="button" class="btn btn-info" data-filter=".region-kanto" value="Generation 1 - Kanto" />
            <input type="button" class="btn btn-info" data-filter=".region-johto" value="Generation 2 - Johto" />
            <input type="button" class="btn btn-info" data-filter=".region-hoenn" value="Generation 3 - Hoenn" />
            <input type="button" class="btn btn-info" data-filter=".region-sinnoh" value="Generation 4 - Sinnoh" />
        </div>
        <div class="grid">
            <div class="grid-item region-johto">A</div>
            <div class="grid-item grid-item--width2 region-kanto">B</div>
            <div class="grid-item region-johto">C</div>
            <div class="grid-item region-kanto">D</div>
            <div class="grid-item region-johto">E</div>
        </div>
    </div>

    <script src="/Scripts/isotope.pkgd.min.js"></script>
    <script>

        // Initialize Isotope
        $('.grid').isotope({

            // Specify options
            itemSelector: '.grid-item',
            layoutMode: 'fitRows'
        });

        // Filter Items on button click
        $('.filter-button-group').on('click', 'input', function () {
            console.log("Clicked button");
            var filterValue = $(this).attr('data-filter');
            $('.grid').isotope({ filter: filterValue });
        });
    </script>
</asp:Content>

