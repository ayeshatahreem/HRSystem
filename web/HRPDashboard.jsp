<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==0){%>
<jsp:include page="HRPHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
    <fieldset>
        <legend>Field Group</legend>
    </fieldset>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"> <a href="#"><i class="glyphicon glyphicon-stats"></i> Jobs Overview</a></li>
            </ul>
        </div>
        <div class="page-content-wrapper">
            <div class="container-fluid"><a class="btn btn-link" role="button" href="#menu-toggle" id="menu-toggle"><i class="fa fa-bars"></i></a></div>
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <ul class="nav nav-tabs nav-justified">
                            <li><a href="#tab-1" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-blackboard"></i> Advertise Jobs</a></li>
                            <li><a href="#tab-2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> Receive CVs</a></li>
                            <li class="active"><a href="#tab-3" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-calendar"></i> Interview 1</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" role="tabpanel" id="tab-1">
                                <p>
                                <div class="register-photo">
                                    <div class="form-container">
                                        <div class="image-holder"></div>
                                        <form method="post" action="JobController">
                                            <h2 class="text-nowrap text-center text-info">Post Job on CodeClan !</h2>
                                            <div class="dropdown">
                                                <select name="tit0" class="form-control" placeholder="Please Select">
                                                    <option value="IT Expert">IT Expert</option>
                                                    <option value="Android Developer">Android Developer</option>
                                                    <option value="Software Engineer">Software Engineer</option>
                                                    <option value="Web Designer">Web Designer</option>
                                                    <option value="Web Developer">Web Developer</option>
                                                    <option value="Graphic Designer">Graphic Designer</option>
                                                    <option value="Data Scientist">Data Scientist</option>
                                                    <option value="Database Analyst">Database Analyst</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input class="form-control" type="text" name="qua0" placeholder="Qualification" autocomplete="on" required>
                                            </div>
                                            <div class="form-group">
                                                <input class="form-control" type="text" name="exp0" placeholder="Experience" autocomplete="on" required>
                                            </div>
                                            <div class="form-group">
                                                <input class="form-control" type="text" name="des0" placeholder="Description" autocomplete="on">
                                                 </div>
                                            <div class="form-group">
                                                <input class="form-control" type="text" name="dea0" placeholder="Deadline" autocomplete="on" required>
                                            </div>
                                            <div class="form-group"></div>
                                            <div class="form-group">
                                                <button class="btn btn-info btn-block" type="submit" onclick = "this.submit.form();">Post Job</button>
                                            </div><a class="btn btn-default btn-lg" role="button" href="https://itunes.apple.com/us/genre/ios/id36?mt=8"><i class="fa fa-apple"></i> Post Job on the App Store</a>
                                            <a class="btn btn-default btn-lg" role="button" href="https://play.google.com/store?hl=en"><i class="fa fa-google"></i> Post Job on the Play Store</a>
                                        </form>
                                    </div>
                                </div>


                                </p>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="tab-2">
                                <h1 class="text-nowrap text-center text-info">Receive & Review Applicants</h1>
                                <div class="content-wrap">
                                    <form action="ApplicantsController" method="post" >
                                        <div style="top: 25%" class="login-form" >
                                            <div class="form-group ">
                                                <i class="fa fa-search"></i>
                                                <select class="form-control" name="Type" id="RType">
                                                    <option selected disabled>Search Applicants Jobwise</option>
                                                    <option value="Sin">1</option>
                                                    <option value="Do">2</option>
                                                    <option value="Sui">3</option>
                                                </select>
                                            </div>
                                            <button type="submit" class="log-btn">Search or Review Applicants</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-offset-1 col-xs-12 one-column-row news-bulletin-tabs">
                                    <div class="ministry-tabs">
                                        <ul class="nav nav-tabs">
                                            <li class="active news-bulletin-tabs" id="tab-2016"><a href="#current-2016" role="tab" data-toggle="tab">Job1(IT Expert)</a></li>
                                            <li id="tab1-2016" class="news-bulletin-tabs"><a href="#current-2016" role="tab" data-toggle="tab">Job2(Software Eng.) </a></li>
                                            <li id="tab2-2016" class="news-bulletin-tabs"><a href="#current-2016" role="tab" data-toggle="tab">Job3(Graphic Desig.) </a></li>
                                            <li id="tab3-2016" class="news-bulletin-tabs"><a href="#current-2016" role="tab" data-toggle="tab">Job4(Android Developer)</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane fade in active" role="tabpanel" id="current-2016">
                                                <div class="row centered">
                                                    <div class="col-xs-12 one-column-row">
                                                        <h1 class="text-center news-bulletin-heading-text">CVs filtered month wise( 5Jan,17 - 4Apr,17)</h1></div>
                                                </div>
                                                <div class="row centered">
    <div class="col-sm-6 col-xs-12">
        <div class="row two-column-row-inner">
            <div class="col-md-12">
                <div role="tablist" aria-multiselectable="true" class="panel-group" id="accordion-1">
                    <div class="panel panel-default">
                        <div role="tab" class="panel-heading">
                            <h4 class="text-center panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="false" href="#accordion-1 .item-1" class="bulletin-month-text">January </a></h4></div>
                        <div role="tabpanel" class="panel-collapse collapse item-1">
                            <div class="panel-body text-center">
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 1</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 2</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 3</a></div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab">
                            <h4 class="text-center panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="false" href="#accordion-1 .item-2" class="bulletin-month-text">February </a></h4></div>
                        <div class="panel-collapse collapse item-2" role="tabpanel">
                            <div class="panel-body text-center">
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 1</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 2</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 3</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-xs-12">
        <div class="row two-column-row-inner">
            <div class="col-md-12">
                <div role="tablist" aria-multiselectable="true" class="panel-group" id="accordion-2">
                    <div class="panel panel-default">
                        <div role="tab" class="panel-heading">
                            <h4 class="text-center panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-2" aria-expanded="false" href="#accordion-2 .item-1" class="bulletin-month-text">March </a></h4></div>
                        <div role="tabpanel" class="panel-collapse collapse item-1">
                            <div class="panel-body text-center">
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 1</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 2</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 3</a></div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div role="tab" class="panel-heading">
                            <h4 class="text-center panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-2" aria-expanded="false" href="#accordion-2 .item-2" class="bulletin-month-text">April </a></h4></div>
                        <div role="tabpanel" class="panel-collapse collapse item-2">
                            <div class="panel-body text-center">
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 1</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 2</a>
                                <hr /><a href="AyeshaTahreemAamir.pdf" target="_blank">CV 3</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div>
                                    <div class="jumbotron-contact jumbotron-contact-sm">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-sm-12 col-lg-12">
                                                    <h1 class="h1">Notifying Applicant </h1>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <div class="well well-sm">
                                                    <form method="post" action="NotifyApplicant">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="name">
                                                                        Name</label>
                                                                    <input type="text" class="form-control"  name="Name" id="epname" placeholder="Enter name" autocomplete="on" required="required" />
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="email">
                                                                        Email Address</label>
                                                                    <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                <input type="email" class="form-control" name="Email" id="epemail" autocomplete="on" placeholder="Enter email" required="required" /></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="subject">
                                                                        Subject</label>
                                                                    <select id="epsubject" name="subject" class="form-control" required="required">
                                                                        <option value="na" selected="">Choose One:</option>
                                                                        <option value="Not Selected">Not Selected :(</option>
                                                                        <option value="Selected for round 1">Selected for round 1 :(</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="name">Message</label>
                                                                    <textarea name="message" id="epmessage" class="form-control" rows="9" cols="25" required="required"
                                                                              placeholder="Message"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-primary pull-right" id="ebtnContactUs" onclick = "this.submit.form();">Notify Applicant</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <form>
                                                    <legend><span class="glyphicon glyphicon-globe"></span> Our Office</legend><address><strong>CodeClan, Inc.</strong><br /><br />5-Maltape , Istanbul Turkey<br /><abbr title="Phone">+</abbr>(90) 555-123456</address><address><br /><a href="mailto:#">support@codeclan.com</a></address></form>
                                            </div>
                                        </div>
                                    </div>




                                </div>
                                <div>
                                    <div class="jumbotron-contact jumbotron-contact-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Request SME </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form method="post" action="InterviewReqSME">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control"  autocomplete="on" name="Name" id="pname" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control"  autocomplete="on" name="email" id="pemail" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="psubject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="Timeslot for interview">Timeslot for interview</option>
                                <option value="Further suggestions">Further suggestions</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="pmessage" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs" onclick = "this.submit.form();">
                            Request SME</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
                    <form>
                        <legend><span class="glyphicon glyphicon-globe"></span> Our Office</legend><address><strong>CodeClan, Inc.</strong><br /><br />5-Maltape , Istanbul Turkey<br /><abbr title="Phone">+</abbr>(90) 555-123456</address><address><br /><a href="mailto:#">support@codeclan.com</a></address></form>
                </div>
    </div>
</div>
                                </div>



                            </div>
                            <div class="tab-pane active" role="tabpanel" id="tab-3">
                                <p></p>
                                <div>
                                    <div class="jumbotron-contact jumbotron-contact-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Schedule Applicant </h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form method="post" action="InterviewCallToApp">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control"  autocomplete="on" name="qName" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" name="qEmail"  autocomplete="on" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="qsubject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="Come for Interview 1">Come for Interview1</option>
                                <option value="Sorry, wait more">Sorry, wait more</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="qmessage" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="ibtnContactUs" onclick = "this.submit.form();">
                            Call for Interview 1</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
                    <form>
                        <legend><span class="glyphicon glyphicon-globe"></span> Our Office</legend><address><strong>CodeClan, Inc.</strong><br /><br />Turkey<br /><abbr title="Phone">+</abbr>(90) 555-123456</address><address><br /><a href="mailto:#">support@codeclan.com</a></address></form>
                </div>
    </div>
</div>
<div class="jumbotron-contact jumbotron-contact-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    View Ratings </h1>
            </div>
        </div>
    </div>
</div>
                                </div>
                                <p>
                                <div class="content-wrap">
                                    <form action="ViewAppRating" method="post" >
                                        <div style="top: 25%" class="login-form" >
                                            <div class="form-group ">
                                                <i class="fa fa-search"></i>
                                                <select class="form-control" name="Type" id="Rpe">
                                                    <option selected disabled>Search Applicants in order to rate</option>
                                                    <option value="Sin">1</option>
                                                    <option value="Do">2</option>
                                                    <option value="Sui">3</option>
                                                </select>
                                            </div>
                                            <button type="submit" class="log-btn">Rate Applicants</button>
                                        </div>
                                    </form>
                                </div>
                                </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div></div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/3D-SLIDER.js"></script>
    <script src="assets/js/3D-SLIDER1.js"></script>
    <script src="assets/js/3D-SLIDER2.js"></script>
    <script src="assets/js/3D-SLIDER3.js"></script>
    <script src="assets/js/3D-SLIDER4.js"></script>
    <script src="assets/js/3D-SLIDER5.js"></script>
    <script src="assets/js/Animated-Pretty-Product-List.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    <script src="assets/js/Dynamic-Table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="assets/js/PHP-Contact-Form-dark.js"></script>
    <script src="assets/js/PHP-Contact-Form-dark1.js"></script>
    <script src="assets/js/Profile-Edit.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    <script src="assets/js/Simple-Slider.js"></script>
    <script src="assets/js/tabbed_slider.js"></script>
    <script src="assets/js/Vertical-menu.js"></script>
</body>

</html>