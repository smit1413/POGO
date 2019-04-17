<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectMeowth._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h4 {
            font-size: 1.75rem !important;
        }

        h3 {
            font-size: 1.65rem !important;
        }

        p {
            font-size: 1.5rem !important;
        }

    </style>
    
    <div class="container">
        <div class="row">
            <div class="col-sm-8 h-100">
                <div class="card shadow-lg">
                    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <img src="Content/Images/image1.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                          <img src="Content/Images/image2.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                          <img src="Content/Images/image3.jpg" class="d-block w-100" alt="...">
                        </div> 
                      </div>
                      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                      <div class="card-body">
                    <h1 class="display-1">Latest News</h1>

                        <h4 class="card-text">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut magna et est convallis blandit at nec quam. Praesent mattis auctor posuere. Vestibulum pulvinar, turpis id aliquam hendrerit, odio eros vulputate mauris, eget interdum mauris elit vel tortor. Mauris nec quam egestas, tempor risus nec, dignissim dui. Duis rutrum felis velit, vitae luctus risus lobortis eu. Vivamus scelerisque imperdiet dui, ac dignissim ipsum luctus sed. In orci nibh, tempus vitae nibh semper, lacinia sodales erat. Praesent sagittis mauris et egestas sodales.
                            <br />
                            <br />
                            Sed at libero consectetur, convallis leo sit amet, consequat est. Maecenas sodales vel nisl sodales viverra. Donec tristique arcu sit amet cursus consequat. Curabitur vel dui fringilla, imperdiet metus sed, fringilla mauris. Suspendisse laoreet non metus eget sagittis. Nam blandit, felis varius fringilla varius, libero massa accumsan mauris, sed luctus augue mi id libero. Cras nec rutrum sem. Donec nec metus libero. Donec in turpis justo. In et sollicitudin augue. Mauris vitae congue arcu, et varius ante.
                            <br />
                            <br />
                            Mauris sit amet lorem mollis, auctor augue quis, posuere felis. Curabitur dapibus elit et congue maximus. Sed eget neque tellus. Duis auctor leo suscipit est feugiat, eu dictum leo facilisis. Donec semper volutpat ullamcorper. Nullam velit ligula, auctor ut velit eu, imperdiet egestas metus. Proin sed dapibus tortor. Maecenas vitae nulla non ligula feugiat hendrerit ac non sem. Ut blandit suscipit metus, quis tristique nisi bibendum a. Duis pharetra est at velit gravida, quis vulputate enim porttitor. Quisque rutrum ultricies lectus. Phasellus nisi nisl, lacinia ac arcu ut, elementum auctor turpis. Maecenas sodales vestibulum mauris, a laoreet diam luctus sed. Nam dolor dolor, consequat ut ligula vel, ullamcorper iaculis tellus.
                            <br />
                            <br />
                            Sed quis luctus tortor. Maecenas vel consequat enim. Aenean sit amet interdum erat. Pellentesque vel volutpat tortor, eu fringilla ante. Donec efficitur varius erat eget faucibus. Aenean id condimentum enim. Donec a eros sit amet tortor euismod iaculis. Proin arcu felis, aliquam vel porta at, consectetur a neque. Nunc a ultricies ex, ac tincidunt purus.
                            <br />
                            <br />
                            Integer vitae ex ex. Ut condimentum sem nunc, quis commodo tellus suscipit at. Phasellus in fermentum tellus. Ut in eros pretium, tristique dui ut, venenatis massa. Quisque in aliquam mauris. Nulla elementum feugiat interdum. Ut volutpat imperdiet eros, ac malesuada nisl eleifend non. Donec ornare tortor non odio tempor scelerisque. Nunc egestas dui purus, at porttitor diam tincidunt ultricies. Cras ultricies, nulla et mollis aliquam, nulla nibh sollicitudin nibh, vitae tristique libero nisl vel augue. Duis blandit elit ipsum, sed auctor enim commodo vel. Vivamus vitae magna fringilla urna sagittis feugiat imperdiet sed magna.

                        </h4>
                      </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="card shadow-lg">
                <img src="Content/Images/pow.jpg" class="card-img-top">
                    <div class="card-body">
                        <h3 class="card-title">Player Of The Week</h3>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                </br>
                <div class="card shadow-lg">
                    <div class="card-body">
                    <h3 class="card-title">Pokemon Go Updates </h3>
                        <p class="card-text"> <a class="twitter-timeline" href="https://twitter.com/PokemonGoNews" data-widget-id="661486332787580928"  data-screen-name="VibrantGujarat" width="350" height="400" data-chrome="noborders">
	                    Tweets by @https://twitter.com/PokemonGoNews</a>
                        <script async defer>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>  
                    </div>
                </div>
            </div>
        </div>
    </div>

    
</asp:Content>
