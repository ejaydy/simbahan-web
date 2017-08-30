﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicCatholicPrayers.aspx.cs" Inherits="SimbahanApp.BasicCatholicPrayers" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!---------------------------
    Author: Claud Montaril
    Description: Basic Catholic Prayers Page
    Date Created: 05/16/2017
    Date Modified:
    Modified by:
    --------------------------->
    <link href="Content/Site.css" rel="stylesheet"/>
    <link href="Content/SimbahanStyle.css" rel="stylesheet"/>
    <link href="Content/calendar-blue.css" rel="stylesheet"/>
    <link href="Content/prayers.css" rel="stylesheet"/>

    <div class="box-body" style="background-image: url(Images/Background.jpg)">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <br/>
                    <h1 class="moods">BASIC CATHOLIC PRAYERS</h1>

                    <br/><br/>


                </div>
                <div id="container">
                    <div class="row">
                        <div class="col-md-3 col-md-offset-8">
                            <input type="text" class="fuzzy-search form-control" placeholder="Search . . ."/>
                        </div>
                    </div>

                    <div class="content">
                        <div id="tablex">

                            <br/><br/><br/>

                            <div class="list">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:content>

<asp:Content ID="ScriptsPlaceHolder" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script>
        (new http).post('BasicCatholicPrayers.aspx/GetBasicCatholicPrayers').then(function(response) {
            prayers = new Map();
            var items = [];

            $.each(response.d,
                function(key, prayer) {
                    prayers.set(prayer.Id, prayer);

                    items.push({
                        prayer: prayer.Title,
                        aLink: 'BasicCatholicPrayer.aspx?id=' + prayer.Id
                    });
                });

            var options = {
                valueNames: ['prayer', { name: 'aLink', attr: 'href' }],
                item: '<div class="col-md-3 prayers"><a class="aLink prayer" href=""></a></div>'
            };
            var list = new List('container', options, items);
        }).run();

    </script>
</asp:Content>