<%@ Page Title="Pokédex" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pokedex.aspx.cs" Inherits="ProjectMeowth.Pokedex" %>

<asp:Content ID="BodyContentPokedex" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Under Construction</h2>
    <h3>You have reached the - <%: Title %> page.</h3>

    <div class="wrapper">
        <div class="city">
            <audio id="pokesong" src="~/Content/Audio/pokeSong.mp3"></audio> 
            <button onclick="playpokesong()">►</button>
            <button onclick="pausepokesong()"> ❚❚ </button>
  
            <div class="grass">
              <div class="river"></div>
              <div class="tree"></div>
              <div class="tree"></div>
              <div class="tree"></div>
              <div class="tree"></div>
              <div class="tree"></div>
              <div class="path"></div>
              <div class="pathend"></div>
              <div class="flower">
                     <span class="petal"></span>
                     <span class="petal"></span>
                     <span class="petal"></span>
              </div>
              <div class="longgrass"></div>
              <div class="longgrass"></div>
              <div class="flower2">
                     <span class="petal"></span>
                     <span class="petal"></span>
                     <span class="petal"></span>
              </div>
              <div class="flower3">
                     <span class="petal"></span>
                     <span class="petal"></span>
                     <span class="petal"></span>
              </div>
              <div class="house">
                    <div class="houseshadow"></div>
                    <div class="door"></div>
                    <div class="window"></div>
                    <div class="roof">
                          <div class="roofwindow"></div
                   </div><!--roof-->
              </div><!--house-->
              <div class="pokeball"></div>
          
            </div><!--grass-->
                <div class="pikachu">
                        <div class="head"></div>
                        <div class="backfeet"></div>
                        <div class="frontfeet"></div>
                      </div>
        </div><!--city-->
    </div> <!-- /wrapper -->

    <script>
        var audio = document.getElementById("pokesong");

        function playpokesong() {
          audio.play();
        }

        function pausepokesong() {
          audio.pause();
        }

    </script>
</asp:Content>

