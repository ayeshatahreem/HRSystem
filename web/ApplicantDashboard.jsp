<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==2){%>
<jsp:include page="ApplicantHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
    <fieldset>
        <legend>Field Group</legend>
    </fieldset>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"> <a href="Jobs.jsp"><i class="glyphicon glyphicon-stats"></i> Jobs Overview</a></li>
            </ul>
        </div>
        <div class="page-content-wrapper">
            <div class="container-fluid"><a class="btn btn-link" role="button" href="#menu-toggle" id="menu-toggle"><i class="fa fa-bars"></i></a>
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <ul class="nav nav-tabs nav-justified">
                                <li class="active"><a href="#tab-2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> Fav. Jobs</a></li>
                                <li><a href="#tab-1" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-blackboard"></i> Jobs Status</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" role="tabpanel" id="tab-1">
                                    <div class="bg-gray padding-50">
                                        <div class="panel-group" role="tablist" aria-multiselectable="true" id="accordion-1">
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab">
                                                    <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="true" href="#accordion-1 .item-1">Job 1</a></h4></div>
                                                <div class="panel-collapse collapse in item-1" role="tabpanel">
                                                    <div class="panel-body">
                                                        <div class="panel-group" role="tablist" aria-multiselectable="true" id="accordion-2">
                                                            <div class="panel panel-default">
                                                                <div class="panel-heading" role="tab">
                                                                    <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-2" aria-expanded="true" href="#accordion-2 .item-1">Application </a></h4></div>
                                                                <div class="panel-collapse collapse in item-1" role="tabpanel">
                                                                    <div class="panel-body"><span>In Progress</span></div>
                                                                </div>
                                                            </div>
                                                            <div class="panel panel-default">
                                                                <div class="panel-heading" role="tab">
                                                                    <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-2" aria-expanded="false" href="#accordion-2 .item-2">Interview 1</a></h4></div>
                                                                <div class="panel-collapse collapse item-2" role="tabpanel">
                                                                    <div class="panel-body"><span>Item body.</span></div>
                                                                </div>
                                                            </div>
                                                            <div class="panel panel-default">
                                                                <div class="panel-heading" role="tab">
                                                                    <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-2" aria-expanded="false" href="#accordion-2 .item-3">Interview 2</a></h4></div>
                                                                <div class="panel-collapse collapse item-3" role="tabpanel">
                                                                    <div class="panel-body"><span>Item body.</span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane active" role="tabpanel" id="tab-2">
                                    <div class="panel-group" role="tablist" aria-multiselectable="true" id="accordion-3">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-3" aria-expanded="true" href="#accordion-3 .item-1">Job 1</a></h4></div>
                                            <div class="panel-collapse collapse in item-1" role="tabpanel">
                                                <div class="panel-body"><span>Item body.</span></div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-3" aria-expanded="false" href="#accordion-3 .item-2">Job 2</a></h4></div>
                                            <div class="panel-collapse collapse item-2" role="tabpanel">
                                                <div class="panel-body"><span>Item body.</span></div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-3" aria-expanded="false" href="#accordion-3 .item-3">Job 3</a></h4></div>
                                            <div class="panel-collapse collapse item-3" role="tabpanel">
                                                <div class="panel-body"><span>Item body.</span></div>
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
