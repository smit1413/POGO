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
        <div id="btnFilters">
            <div class="button-group filter-button-group" data-filter-group="region">

                <!-- NOTE: You must NOT use the button tag here, since it triggers a postback in ASP.NET & resets the filter -->
                <input type="button" class="btn btn-info" data-filter="*" value="Show All" />
                <input type="button" class="btn btn-info" data-filter=".region-kanto" value="Generation 1 - Kanto" />
                <input type="button" class="btn btn-info" data-filter=".region-johto" value="Generation 2 - Johto" />
                <input type="button" class="btn btn-info" data-filter=".region-hoenn" value="Generation 3 - Hoenn" />
                <input type="button" class="btn btn-info" data-filter=".region-sinnoh" value="Generation 4 - Sinnoh" />
            </div>

            <div class="button-group" data-filter-group="type">

                <!-- NOTE: You must NOT use the button tag here, since it triggers a postback in ASP.NET & resets the filter -->
                <input type="button" class="btn btn-info" data-filter="*" value="Show All" />
                <input type="button" class="btn btn-info" data-filter=".type-none" value="None" />
                <input type="button" class="btn btn-info" data-filter=".type-fighting" value="Fighting" />
                <input type="button" class="btn btn-info" data-filter=".type-dragon" value="Dragon" />
            </div>
        </div>

        <div class="grid">
            <div class="grid-item region-johto type-none">A</div>
            <div class="grid-item grid-item--width2 region-kanto type-dragon">B</div>
            <div class="grid-item region-johto type-dragon">C</div>
            <div class="grid-item region-kanto type-none">D</div>
            <div class="grid-item region-johto type-none">E</div>
        </div>
    </div>

    <script src="/Scripts/isotope.pkgd.min.js"></script>
    <script>

        // Initialize Isotope
        var $grid = $('.grid').isotope({

            // Specify options
            itemSelector: '.grid-item',
            layoutMode: 'fitRows'
        });

        ////// Filter Items on button click (single filter on page)
        ////$('.filter-button-group').on('click', 'input', function () {
        ////    console.log("Clicked button");
        ////    var filterValue = $(this).attr('data-filter');
        ////    $grid.isotope({ filter: filterValue });
        ////});

        // Store Filter for each group (multiple COMBINED filters on page)
        var filters = {};

        $('#btnFilters').on('click', 'input', function () {
            var $this = $(this);

            // Get group key
            var $buttonGroup = $this.parents('.button-group');
            var filterGroup = $buttonGroup.attr('data-filter-group');

            // Set filter for group
            filters[filterGroup] = $this.attr('data-filter');

            // Combine filters
            var filterValue = concatValues(filters);
            $grid.isotope({ filter: filterValue });
        });

        // Flatten object by concatenating values
        function concatValues(obj) {
            var value = '';
            for (var prop in obj) {
                value += obj[prop];
            }
            return value;
        }
    </script>
</asp:Content>

