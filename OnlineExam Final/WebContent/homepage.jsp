<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <!--====== USEFULL META ======-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="App, Landing, Business, Onepage, Html, Business" />

    <!--====== TITLE TAG ======-->
    <title>Online test </title>

    <!--====== FAVICON ICON =======-->
    <link rel="shortcut icon" type="image/ico" href="assest/img/favicon.ico" />

    <!--====== STYLESHEETS ======-->
    <link href="assest/css/plugins.css" rel="stylesheet">
    <link href="assest/css/theme.css" rel="stylesheet">
    <link href="assest/css/icons.css" rel="stylesheet">

    <!--====== MAIN STYLESHEETS ======-->
    <link href="style.css" rel="stylesheet">
    <link href="assest/css/responsive.css" rel="stylesheet">

    <script src="assest/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body data-spy="scroll" data-target=".mainmenu-area" data-offset="90">
 
 <%
	response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
 %>

    <!--- PRELOADER -->
    <div class="preeloader">
        <div class="preloader-spinner"></div>
    </div>

    <!--SCROLL TO TOP-->
    <a href="#scroolup" class="scrolltotop"><i class="fa fa-long-arrow-up"></i></a>

    <!--START TOP AREA-->
    <header class="top-area" id="home">
        <div class="header-top-area" id="scroolup">
            <!--MAINMENU AREA-->
            <div class="mainmenu-area" id="mainmenu-area">
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar">
                    <div class="container">

                        <div id="main-nav" class="stellarnav">
                        	<ul id="nav" class="nav navbar-nav pull-left">
                                <li class="active"><a href="#home" style="font-weight: bold;font-style: oblique;font-family:'Sofia'; font-size: 30px;"><img src="assest/img/favicon.ico"></a></li>
                            </ul>
                            <ul id="nav" class="nav navbar-nav pull-right">
                                <li class="active"><a href="#home">Home</a></li>                                
                                <li><a href="#courses">Courses</a></li>                                
                                <li><a href="#blog">Blog</a></li>                                
                                <li><a href="feedback.jsp">Feedback</a></li>
                                <li><a href="login.jsp"><button class="btn btn-outline-success"type="button" style="background-color:green;">LOG IN</button></a></li>
                                <li><a href="register.jsp"><button class="btn btn-outline-success"type="button" style="background-color:green;">REGISTER</button></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <!--END MAINMENU AREA END-->
        </div>

        <!--WELCOME SLIDER AREA-->
        <div class="welcome-slider-area white font16">
            <div class="welcome-single-slide">
                <div class="slide-bg-one slide-bg-overlay"></div>
                <div class="welcome-area">
                    <div class="container">
                        <div class="row flex-v-center">
                            <div class="col-md-8 col-lg-7 col-sm-12 col-xs-12">
                                <div class="welcome-text">
                                    <h1>Be Prepared</h1>
                                    <p>Exams test your memory, life tests your learning, others test your patience.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="welcome-single-slide">
                <div class="slide-bg-two slide-bg-overlay"></div>
                <div class="welcome-area">
                    <div class="container">
                        <div class="row flex-v-center">
                            <div class="col-md-8 col-lg-7 col-sm-12 col-xs-12">
                                <div class="welcome-text">
                                     <h1>Welcome to the new Digital World.</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="welcome-single-slide">
                <div class="slide-bg-three slide-bg-overlay"></div>
                <div class="welcome-area">
                    <div class="container">
                        <div class="row flex-v-center">
                            <div class="col-md-8 col-lg-7 col-sm-12 col-xs-12">
                                <div class="welcome-text">
                                    <h1>There's more to life than passing exams.</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="welcome-single-slide">
                <div class="slide-bg-four slide-bg-overlay"></div>
                <div class="welcome-area">
                    <div class="container">
                        <div class="row flex-v-center">
                            <div class="col-md-8 col-lg-7 col-sm-12 col-xs-12">
                                <div class="welcome-text">
                                     <h1>Organize where you study.</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--WELCOME SLIDER AREA END-->
    </header>

       <!--COURSE AREA-->
    <section class="course-area padding-top" id="courses">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2 col-sm-12 col-xs-12">
                    <div class="area-title text-center wow fadeIn">
                        <h2 class="xs-font26">Courses We Offer</h2>
                    </div>
                </div>
            </div>
            <div class="row course-list">
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="single-course mb20">
                        <img src="assest/img/course/bca.jpg" alt="">
                        <div class="course-details padding30">
                            <h3 class="font18">BCA</h3>
                            <p>Bachelor of Computer Application</p>
                            <p class="mt30"><a href="login.jsp" class="enroll-button">Select Sem</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="single-course mb20">
                        <img src="assest/img/course/bcom.jpg" alt="">
                        <div class="course-details padding30">
                            <h3 class="font18">B.Com</h3>
                            <p>Bachelor of Commerce</p>
                            <p class="mt30"><a href="login.jsp" class="enroll-button">Select Sem</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="single-course mb20">
                        <img src="assest/img/course/bba.jpg" alt="">
                        <div class="course-details padding30">
                            <h3 class="font18">BBA</h3>
                            <p>Bachelor of Business Administration</p>
                            <p class="mt30"><a href="login.jsp" class="enroll-button">Select Sem</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="single-course mb20">
                        <img src="assest/img/course/btech.png" alt="">
                        <div class="course-details padding30">
                            <h3 class="font18">Btech</h3>
                            <p>Bachelor in Technology</p>
                            <p class="mt30"><a href="login.jsp" class="enroll-button">Select Sem</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--COURSE AREA END-->

    <!--BLOG AREA-->
    <section class="blog-feed-area padding-top" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2 col-sm-12 col-xs-12">
                    <div class="area-title text-center wow fadeIn">
                        <h2>From Our Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="single-blog-item sm-mb30 xs-mb30 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="blog-thumb">
                            <img src="assest/img/blog/blog-1.jpg">
                        </div>
                        <div class="blog-details padding30">
                            <h3 class="blog-title font20 mb30"><a href=>What is the Best Time to Study? Day vs Night
                            </a></h3>
                            <p class="blog-meta font14 mt20"><a href=>August 6, 2017</a> by Diego Santos </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="single-blog-item sm-mb30 xs-mb30 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="blog-thumb">
                            <img src="assest/img/blog/blog-2.jpg">
                        </div>
                        <div class="blog-details padding30">
                            <h3 class="blog-title font20 mb30"><a href=>Organise your Subjects for Study Success</a></h3>
                            <p class="blog-meta font14 mt20"><a href=>August 19, 2014</a> by Maya Velasquez</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="single-blog-item sm-mb30 xs-mb30 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="blog-thumb">
                            <img src="assest/img/blog/blog-3.jpg">
                        </div>
                        <div class="blog-details padding30">
                            <h3 class="blog-title font20 mb30"><a href=>How to Beat Exam Stress in 10 Easy Ways</a></h3>
                            <p class="blog-meta font14 mt20"><a href=>April 22, 2017 </a> by Andrea Leyden</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--BLOG AREA END-->

    <!--====== SCRIPTS JS ======-->
    <script src="assest/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assest/js/vendor/bootstrap.min.js"></script>

    <!--====== PLUGINS JS ======-->
    <script src="assest/js/vendor/jquery.easing.1.3.js"></script>
    <script src="assest/js/vendor/jquery-migrate-1.2.1.min.js"></script>
    <script src="assest/js/vendor/jquery.appear.js"></script>
    <script src="assest/js/owl.carousel.min.js"></script>
    <script src="assest/js/stellar.js"></script>
    <script src="assest/js/waypoints.min.js"></script>
    <script src="assest/js/jquery.counterup.min.js"></script>
    <script src="assest/js/wow.min.js"></script>
    <script src="assest/js/jquery-modal-video.min.js"></script>
    <script src="assest/js/stellarnav.min.js"></script>
    <script src="assest/js/placeholdem.min.js"></script>
    <script src="assest/js/contact-form.js"></script>
    <script src="assest/js/jquery.ajaxchimp.js"></script>
    <script src="assest/js/jquery.sticky.js"></script>

    <!--===== ACTIVE JS=====-->
    <script src="assest/js/main.js"></script>

</body>

</html>
