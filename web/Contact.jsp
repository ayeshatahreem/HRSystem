<% if(session.getAttribute("Type")==null){ %>
<jsp:include page="Header.jsp" />
<%}else if((Integer)session.getAttribute("Type")==0){%>
<jsp:include page="HRPHeader.jsp" />
<%}else if((Integer)session.getAttribute("Type")==1){%>
<jsp:include page="HRMHeader.jsp" />
<%}else if((Integer)session.getAttribute("Type")==2){%>
<jsp:include page="ApplicantHeader.jsp" />
<%}else if((Integer)session.getAttribute("Type")==3){%>
<jsp:include page="SMEHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
    <div>
    <div>
        <div class="jumbotron-contact jumbotron-contact-sm">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <h1 class="h1">Leave a note for us!</h1></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="well well-sm">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email Address</label>
                                        <div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                            <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subject">Subject</label>
                                        <select id="subject" name="subject" class="form-control" required="required">
                                            <option value="na" selected>Choose One:</option>
                                            <option value="service">General Customer Service</option>
                                            <option value="suggestions">Suggestions</option>
                                            <option value="product">Product Support</option>
                                            <option value="suggestions">Related to Jobs</option>
                                            <option value="product">Others</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Message</label>
                                        <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">Send Message</button>
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
    <div class="map-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center"><i class="glyphicon glyphicon-map-marker"></i> Istanbul, Turkey</h2></div>
        </div>
        <iframe allowfullscreen="" frameborder="0" width="100%" height="450" src="https://www.google.com/maps/embed/v1/place?q=Paris%2C+France&amp;zoom=15"></iframe>
    </div>
    <div class="social-icons" style="padding-top:50px;">
        <p class="text-center"><strong> We are very social. Stay tuned with us on.. </strong></p><a href="https://twitter.com"><i class="icon ion-social-twitter"></i></a><a href="https://www.facebook.com"><i class="icon ion-social-facebook"></i></a>
        <a href="https://www.linkedin.com"><i class="icon ion-social-linkedin-outline"></i></a><a href="https://github.com"><i class="icon ion-social-github"></i></a></div>
    <div class="newsletter-subscribe">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Subscribe for our Newsletter</h2>
                <p class="text-center"><strong>You are just a click away to get the status, details and updates posted regarding jobs. </strong></p>
            </div>
            <form class="form-inline" method="post">
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Your Email">
                </div>
                <div class="form-group">
                    <button class="btn btn-primary" type="submit">Subscribe </button>
                </div>
            </form>
        </div>
    </div>
    <div class="team-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-uppercase text-center">Team </h2>
                <p class="text-center">Meet our exe team!</p>
            </div>
            <div class="row people">
                <div class="col-md-4 col-sm-6 item"><img class="img-circle" src="assets/img/ii.png" height="160">
                    <h3 class="name">Ayesha Tahreem</h3>
                    <p class="title">HRM </p>
                    <div class="social"><a href="https://www.facebook.com/ayeshatahreemaamir.5"><i class="fa fa-facebook-official"></i></a><a href="https://twitter.com/ayesha_tahreem"><i class="fa fa-twitter"></i></a>
                        <a href="https://www.linkedin.com/in/ayesha-tahreem-169216102"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 item"><img class="img-circle" src="assets/img/Capture.png">
                    <h3 class="name">Shiza Ali</h3>
                    <p class="title">HRP </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>
                </div>
                <div class="col-md-4 col-sm-6 item"><img class="img-circle" src="assets/img/kk.png">
                    <h3 class="name">Zainab Amir</h3>
                    <p class="title">SME Head</p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="Footer.jsp" />