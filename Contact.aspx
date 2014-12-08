<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Contact
                        <strong>South Liberty Public Library</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-8">
                    <!-- Embedded Google Map using an iframe - to select your location find it on Google maps and paste the link as the iframe src. If you want to use the Google Maps API instead then have at it! -->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5953.183723820021!2d-91.60398737317695!3d41.75089544291277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87e444ad329df611%3A0x729e57340e0a7262!2sNorth+Liberty+Community+Library!5e0!3m2!1sen!2sus!4v1417994126903" width="750" height="450" frameborder="0" style="border:0"></iframe>
                </div>
                <div class="col-md-4">
                    <p>Phone:
                        <strong>319.456.7890</strong>
                    </p>
                    <p>Email:
                        <strong><a href="mailto:kyle-boyda@uiowa.edu">SLPL@Library.com</a></strong>
                    </p>
                    <p>Address:
                        <strong>3481 Melrose Place
                            <br>South Liberty, IA 56595</strong>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>


</asp:Content>

