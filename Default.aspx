<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="SLPL_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    Welcome to South Liberty Public Library!  Thank you for visiting and we 
    hope you find everything you are looking for!

           <div>
            <a class="twitter-timeline"  href="https://twitter.com/MSCI3300_SLPL" data-widget-id="541695942370422784">Tweets by @MSCI3300_SLPL</a>
            <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
          </div>


           <div style="width: 260px;"><iframe style="display: block;" src="http://cdn1.willyweather.com/widget/loadView.html?id=11635" width="260" height="228" frameborder="0" scrolling="no"></iframe><a style="display: block;height: 20px;position: relative;margin: -20px 0 0 0;z-index: 1;text-indent: -9999em" href="http://www.willyweather.com/ia/johnson-county/north-liberty.html">North Liberty weather info</a></div>

</asp:Content>
