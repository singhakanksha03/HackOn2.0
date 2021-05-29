<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <link href="css/style.css" rel="stylesheet">
        
        
        <title>Covid Helper App</title>
       
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
            integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">


    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark mb-0 pb-0 pt-0">
            <a class="navbar-brand" href="/">Covid Helper App</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="html/contact.html"><i class="fas fa-sign-in-alt mr-1"></i>Contact us</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="html/about.html"><i class="fas fa-user mr-1"></i>About us</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel" data-slide-to="0" class="active"></li>
                <li data-target="#carousel" data-slide-to="1"></li>
                <li data-target="#carousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../img/corona1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-8 bg-custom d-none d-lg-block py-3 px-0">
                                    <h1>Covid Helper App</h1>
                                    <div class="border-top border-primary w-50 mx-auto my-3"></div>
                                    <h3 class="pb-3">A friend in bad times</h3>
                                    <a href="#covid" class="btn btn-danger btn-lg mr-2">Covid Tracker</a>
                                    <a href="#cowin" class="btn btn-primary btn-lg ml-2">Cowin Portal</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../img/donate.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-end text-left">
                                <div class="col-7 bg-custom d-none d-lg-block py-3 px-0 pr-3 pl-1">
                                    <h3 class="pb-3">Plasma Management App</h3>
                                    <p class="lead pb-3">A centralized place for donating and accepting plasma.One can
                                        find donar and receiver very easily.</p>
                                    <a href="#plasma" class="btn btn-danger btn-lg">Check Out</a>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../img/vaccine.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start text-left">
                                <div class="col-7 bg-custom d-none d-lg-block py-3 px-0 pl-3">

                                    <h3 class="pb-3">Vaccine Slot Notifier</h3>
                                    <p class="lead">A person will get information once vaccine for particular location
                                        is available.</p>
                                    <a href="#vaccine" class="btn btn-primary btn-lg ml-2">Check Out</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="container">


            <div class="row mt-5 mr-3 ml-3">

                <div class="col-md-6 col-lg-4 mx-auto my-4 box" id="covid">
                    <img src="../img/logo.jpg" alt="" class="w-100">
                    <h4 class="my-4 text-center">Covid Tracker</h4>
                    <p class="text-center">Want to see and track the real time data related to total number of covid
                        cases, recoveries and deaths in India.</p>
                    <div class="text-center">
                        <a href="https://www.covid19india.org/" class="btn btn-outline-dark btn-md button">Click
                            Here</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mx-auto my-4 box" id="cowin">
                    <img src="../img/cowin.jpg" alt="" class="w-100">
                    <h4 class="my-4 text-center">Cowin Portal</h4>
                    <p class="text-center">Want to get vaccinated?<br> You are at right place , check the vaccine
                        availability at your nearest location.</p>
                    <div class="text-center">
                        <a href="https://www.cowin.gov.in" class="btn btn-outline-dark btn-md button">Click
                            Here</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mx-auto my-4 box" id="oxygen">
                    <img src="../img/oxygen.jpg" alt="" class="w-100">
                    <h4 class="my-4 text-center">Oxygen Availabiltiy</h4>
                    <p class="text-center">Want to have data about Oxygen? or Having data about any hospital who can
                        provide? This is the right place for it. </p>
                    <div class="text-center">
                        <a href="/oxygen" class="btn btn-outline-dark btn-md button">Click Here</a>
                    </div>
                </div>


            </div>

            <div class="row  mt-5 mr-3 ml-3 ">

                <div class="col-md-6 col-lg-4 mx-auto my-4 box" id="plasma">
                    <img src="../img/donation.jpg" alt="" class="w-100">
                    <h4 class="my-4 text-center">Plasma Availability</h4>
                    <p class="text-center">Want to donate or receive plasma? Kindly contribute for the humanity. Visit
                        the page and get real data, direct from the user. </p>
                    <div class="text-center">
                        <a href="/login" class="btn btn-outline-dark btn-md button">Click Here</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mx-auto my-4 box" id="vaccine">
                    <img src="../img/vaccine-notifier.jpg" alt="" class="w-100">
                    <h4 class="my-4 text-center">Vaccine Slot Notifier</h4>
                    <p class="text-center">Want to get notified as soon as vaccine is available near you? Provide data
                        and get information at you mail. </p>
                    <div class="text-center">
                        <a href="https://getjab.in/" class="btn btn-outline-dark btn-md button">Click
                            Here</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mx-auto my-4 box">
                    <img src="../img/remedesivir.jpg" alt="" class="w-100">
                    <h4 class="my-4 text-center">Remdesivir Availability</h4>
                    <p class="text-center">Want to have data about Remdesivir? or Having data about any hospital who can
                        provide? This is the right place for it. </p>
                    <div class="text-center">
                        <a href="/remedesivir" class="btn btn-outline-dark btn-md button">Click Here</a>
                    </div>
                </div>


            </div>

        </div>

        <div class="container my-5 therapy">
            <div class="row h-100">
                <div class="col-lg-6 mb-4 my-lg-auto">
                    <h1 class="text-dark font-weight-bold mb-3">Plasma Therapy</h1>
                    <p class="mb-4">Plasma therapy, which is broadly known as 'convalescent plasma therapy', is an
                        experimental procedure to treat coronavirus infection. In this treatment, plasma, the yellowish
                        liquid part of the blood, is extracted from a person who has recovered from the infection and
                        injected into a patient who is suffering from that disease. The plasma contains that antibodies
                        that can help a patient fight the pathogen and recover from the disease.<br>
                        <b>Source : Internet</b>
                    </p>
                        


                </div>
                <div class="col-lg-6 h-100 mb-4"><img src="img/therapy.jpg" class="w-100" alt=""></div>
            </div>
        </div>





        <footer class="page-footer font-small blue bg-dark">
            <div class="footer-copyright text-center py-1 text-light">
                &copy Copyright 2021 - Team Olympia
            </div>

        </footer>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
            integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
            crossorigin="anonymous"></script>


    </body>

    </html>