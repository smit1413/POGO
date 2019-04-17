<%@ Page Title="Leaderboards" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Leaderboards.aspx.cs" Inherits="ProjectMeowth.Leaderboards" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>

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
 
    th {
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

    th:first-child {
      border-top-left-radius:3px;
    }
 
    th:last-child {
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


    i {
        padding: 15px;
    }
    .tooltip > .tooltip-inner {
        font-size: 14px;
    }

    </style>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <script>
        $(document).ready(function(){
            $("i").tooltip();
        });
    </script>
    <div class="table-title">
        <h3><%: Title %></h3>
    </div>
    <table class="table-fill">
        <thead>
            <tr>
                <th class="text-left">Rank <i class="fas fa-arrow-up"></i></th>
                <th class="text-left">Trainer</th>
                <th class="text-left">Score</th>
                <th class="text-left">Achievements</th>
            </tr>
        </thead>
        <tbody class="table-hover">
            <tr>
                <td class="text-left">1</td>
                <td class="text-left">Connor</td>
                <td class="text-left">99,999,999</td>
                <td class="text-left">
                    <i class="fas fa-trophy fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Master Trainer"></i>
                    <i class="fas fa-star fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Star Trainer"></i>
                    <i class="fas fa-binoculars fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Top Scout"></i>
                    <i class="fas fa-bolt fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Highest Streak"></i>
                    <i class="fas fa-bomb fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Best Trainer for 5 weeks"></i>
                </td>
            </tr>
            <tr>
                <td class="text-left">2</td>
                <td class="text-left">Richard</td>
                <td class="text-left">98,999,999</td>
                <td class="text-left">
                    <i class="fas fa-trophy fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Master Trainer"></i>
                    <i class="fas fa-star fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Star Trainer"></i>
                    <i class="fas fa-binoculars fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Top Scout"></i>
                    <i class="fas fa-bolt fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Highest Streak"></i>
                </td>
            </tr>
            <tr>
                <td class="text-left">3</td>
                <td class="text-left">Tyler</td>
                <td class="text-left">97,999,999</td> 
                <td class="text-left">
                    <i class="fas fa-star fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Star Trainer"></i>
                    <i class="fas fa-binoculars fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Top Scout"></i>
                    <i class="fas fa-bolt fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Highest Streak"></i>
                </td>
            </tr>
            <tr>
                <td class="text-left">4</td>
                <td class="text-left">Alex</td>
                <td class="text-left">96,999,999</td>                
                <td class="text-left">
                    <i class="fas fa-bolt fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Highest Streak"></i>
                    <i class="fas fa-bomb fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Best Trainer for 5 weeks"></i>
                </td>
            </tr>
            <tr>
                <td class="text-left">5</td>
                <td class="text-left">Tony</td>
                <td class="text-left">95,999,999</td>                
                <td class="text-left">
                    <i class="fas fa-trophy fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Master Trainer"></i>
                    <i class="fas fa-star fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Star Trainer"></i>
                </td>
            </tr>
            <tr>
                <td class="text-left">6</td>
                <td class="text-left">Brandon</td>
                <td class="text-left">94,999,999</td>                
                <td class="text-left">
                    <i class="fas fa-star fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Star Trainer"></i>
                    <i class="fas fa-binoculars fa-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Top Scout"></i>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

