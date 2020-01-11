<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==3){%>
<jsp:include page="SMEHeader.jsp" />
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
                        <li><a href="#tab-2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> Confirm Timings</a></li>
                        <li class="active"><a href="#tab-3" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-calendar"></i> Ratings for Interview-1 </a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane" role="tabpanel" id="tab-2">
                            <div>
                                <div class="jumbotron-contact jumbotron-contact-sm">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-12 col-lg-12">
                                                <h1 class="h1">
                                                    Confirm My Timeslot </h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="well well-sm">
                                                <form method="post" action="TimingConfirmation">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="name">
                                                                    Name</label>
                                                                <input type="text" name="name" class="form-control" id="pname" autocomplete="on" placeholder="Enter name" required="required" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">
                                                                    Email Address</label>
                                                                <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                                                    <input type="email" name="email" class="form-control" id="pemail" autocomplete="on" placeholder="Enter email" required="required" /></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="subject">
                                                                    Subject</label>
                                                                <select id="psubject" name="subject" class="form-control" required="required">
                                                                    <option value="na" selected="">Choose One:</option>
                                                                    <option value="Suitable for me">Suitable for me</option>
                                                                    <option value="Not suitable for me">Not suitable for me</option>
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
                                                            <button type="submit" class="btn btn-primary pull-right" id="pbtnContactUs" onclick = "this.submit.form();">
                                                                Send Message</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane active" role="tabpanel" id="tab-3">
                            <div>
                                <div class="jumbotron-contact jumbotron-contact-sm">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-12 col-lg-12">
                                                <h1 class="h1">
                                                    Skype Interviews  </h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="well well-sm">
                                                <form action="SkypeConferenceController" method="post">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="name">
                                                                    Name</label>
                                                                <input type="text" name="name" class="form-control" id="name" autocomplete="on" placeholder="Enter name" required="required" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">
                                                                    Email Address</label>
                                                                <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                                                    <input type="email"  name="email" autocomplete="on" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="subject">
                                                                    Subject</label>
                                                                <select id="subject" name="subject" class="form-control" required="required">
                                                                    <option value="na" selected="">Choose One:</option>
                                                                    <option value="I'm available">I'm available </option>
                                                                    <option value="Hang on for 5 min">Hang on for 5 min</option>
                                                                    <option value="Start the interview">Start the interview</option>
                                                                    <option value="Cannot hear you :(">Cannot hear you :( </option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="name">
                                                                    Message</label>
                                                                <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                                                          placeholder="Message"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <button type="submit" class="btn btn-primary pull-right" id="btnContactUs" onclick = "this.submit.form();">
                                                                End interview</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="jumbotron-contact jumbotron-contact-sm">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-12 col-lg-12">
                                                <h1 class="h1">
                                                    Rate Applicants</h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <p>
                            <div class="content-wrap">
                                <form action="RateApplicant" method="post" >
                                    <div style="top: 25%" class="login-form" >
                                        <div class="form-group ">
                                            <i class="fa fa-search"></i>
                                            <select class="form-control" name="Type" id="RType">
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
</div>
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