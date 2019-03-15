<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectMeowth._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">.
    <style>
        .wrapper{
            display:grid;
            grid-template-columns: repeat(3, 1fr);
            
            grid-column-gap: 1em;
            grid-row-gap: 1em;

        }

        .box1 {
            grid-column-start: 1;
            grid-column-end: 3;
            grid-row-start: 1;
            grid-row-end: 4;
        }
        .box2{
            grid-column-start: 3;
            grid-column-end: 4;
            grid-row-start: 1;
            grid-row-end: 2;
        }
        .box3{
            grid-column-start: 3;
            grid-column-end: 4;
            grid-row-start: 2;
            grid-row-end: 4;
            overflow: scroll;
        }
        .wrapper>div{
            background:#ffffff;
            padding-left: 10px;
            padding-bottom: 10px;
            
           
        }
        .img-snorlax{
            float: right;
        }
        


        
    </style>
    
     <div class="wrapper">
         <div class="box1">
             <h1 align="center">Latest News</h1>
             <img class="img-snorlax" src="https://thumbs.gfycat.com/SlushyScalyEyelashpitviper-size_restricted.gif" alt="snorlax" /> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum. Integer pulvinar dui sed orci condimentum iaculis. Curabitur semper augue nibh, a maximus sapien rutrum ac. Quisque lacinia dui non est eleifend, eu tincidunt ex varius. Vestibulum dolor lorem, pretium tincidunt nibh in, commodo dictum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis.   
             
         </div>
         <div class="box2">
             <h3 align="center"> Player of the Month</h3>
             Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. 
         </div>
         <div class="box3">
             <h3 align="center">Latest Posts</h3>
             Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Suspendisse quis ex quam. Sed laoreet id est eget bibendum. Integer pulvinar dui sed orci condimentum iaculis. Curabitur semper augue nibh, a maximus sapien rutrum ac. Quisque lacinia dui non est eleifend, eu tincidunt ex varius. Vestibulum dolor lorem    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat eget magna finibus facilisis. Nulla facilisi.
         </div>
         
         


     </div>
    
    
   

</asp:Content>
