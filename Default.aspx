<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="SLPL_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <div class="text-center">
                    <h2 class="brand-name"> Welcome</h2>
                    <hr class="tagline-divider"/>
                    <h3 class="text-center">
                        <small>By
                            <strong>Group 7</strong>
                        </small>
                    </h3>
                </div>

           <div style="float:right">
            <div style="width: 290px; "><iframe style="display: block;" src="http://cdn1.willyweather.com/widget/loadView.html?id=11635" width="260" height="228" frameborder="0" scrolling="no"></iframe><a style="display: block;height: 20px;position: relative;margin: -20px 0 0 0;z-index: 1;text-indent: -9999em" href="http://www.willyweather.com/ia/johnson-county/north-liberty.html">South Liberty weather info</a></div>
            <br />
            <br />
            <a class="twitter-timeline"  href="https://twitter.com/MSCI3300_SLPL" data-widget-id="541695942370422784">Tweets by @MSCI3300_SLPL</a>
            <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
           </div>
     
    
     <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Build a website
                        <strong>worth visiting</strong>
                    </h2>
                    <hr>
                    <img class="img-responsive img-border img-left" src="img/intro-pic.jpg" alt="">
                    <hr class="visible-xs">
                    <p>The boxes used in this template are nested inbetween a normal Bootstrap row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.</p>
                    <p>A huge thanks to <a href="http://join.deathtothestockphoto.com/" target="_blank">Death to the Stock Photo</a> for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                </div>
            </div>
        </div>


</asp:Content>
