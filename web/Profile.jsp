<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==2){%>
<jsp:include page="ApplicantHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
<script>
    function loadDoc()
    {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function()
        {
            if (xhttp.readyState === 4 && xhttp.status === 200)
            {
                document.getElementById("demo").innerHTML = xhttp.responseText;
            }
        };
        xhttp.open("GET", "QuickJobsReview.jsp", true);
        xhttp.send();
    }
</script>
    <h1 class="text-center text-info">My Personal Info</h1>
    <div>
        <ul class="nav nav-tabs nav-justified">
            <li class="active">
                <a href="#tab-1" role="tab" data-toggle="tab"> <i class="glyphicon glyphicon-user"></i> Bio</a>
            </li>
            <li><a href="#tab-2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-blackboard"></i> Profiles</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" role="tabpanel" id="tab-1">
                <div class="panel-group" role="tablist" aria-multiselectable="true" id="accordion-1">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab">
                            <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="false" href="#accordion-1 .item-1">Profile Picture</a></h4></div>
                        <div class="panel-collapse collapse item-1" role="tabpanel">
                            <div class="panel-body">
                                <div class="container profile profile-view" id="profile">
                                    <div class="row">
                                        <div class="col-md-12 alert-col relative">
                                            <div class="alert alert-info absolue center" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button><span>Profile save with success</span></div>
                                        </div>
                                    </div>
                                    <form>
                                        <div class="row profile-row">
                                            <div class="col-md-4 relative">
                                                <div class="avatar">
                                                    <div class="avatar-bg center"></div>
                                                </div>
                                                <input type="file" class="form-control" name="avatar-file">
                                            </div>
                                        </div>
                                    </form>
                                </div><span> </span></div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab">
                            <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="false" href="#accordion-1 .item-2">Personal Details</a></h4></div>
                        <div class="panel-collapse collapse item-2" role="tabpanel">
                            <div class="panel-body"><span> </span>
                                <div id="contact">
                                    <div class="container">
                                        <div class="intro">
                                            <h2>Personal Data</h2></div>
                                        <form action="assets/php/contact.php" method="post" id="contact-form">
                                            <div class="messages"></div>
                                            <div class="controls">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label" for="form_name">First Name* </label>
                                                            <input class="form-control" type="text" name="name" required="" placeholder="First Name" id="form_name" data-error="Vorname erforderlich.">
                                                            <div class="help-block with-errors"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label" for="form_lastname">Last Name* </label>
                                                            <input class="form-control" type="text" name="lastname" required="" placeholder="Last Name" id="form_lastname" data-error="Nachname erforderlich.">
                                                            <div class="help-block with-errors"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label" for="form_email">CNIC Number* </label>
                                                        <input class="form-control" type="email" name="email" required="" placeholder="Email ID" id="form_email" data-error="Vorname erforderlich.">
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label" for="form_phone">Birthday </label>
                                                        <input class="form-control" type="number" name="phone" placeholder="Birthday" id="form_phone" data-error="Telefonnummer erforderlich">
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label" for="form_message">Marital Status* </label>
                                                        <input class="form-control" type="text" name="message" required="" placeholder="Marital Status" id="form_message" data-error="Nachricht erforderlich." rows="4">
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <button class="btn btn-success btn-send" type="submit" value="Senden">Add Info</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab">
                            <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="false" href="#accordion-1 .item-3">Contact Details</a></h4></div>
                        <div class="panel-collapse collapse item-3" role="tabpanel">
                            <div class="panel-body">
                                <div id="contact">
    <div class="container">
        <div class="intro">
            <h2>Contact Details</h2></div>
        <form action="assets/php/contact.php" method="post" id="contact-form">
            <div class="messages"></div>
            <div class="controls">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_name" class="control-label">Email ID* </label>
                            <input type="text" name="name" required placeholder="Email ID" class="form-control" id="form_name" data-error="Vorname erforderlich." />
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_lastname" class="control-label">Phone Number* </label>
                            <input type="text" name="lastname" required placeholder="Phone Number" class="form-control" id="form_lastname" data-error="Nachname erforderlich." />
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="form_email" class="control-label">Home Address* </label>
                        <input type="email" name="email" required placeholder="Home Address" class="form-control" id="form_email" data-error="Vorname erforderlich." />
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
                
            </div>
            <div class="row">
                
                <div class="col-md-12">
                    <button class="btn btn-success btn-send" type="submit" value="Senden">Add Info</button>
                </div>
            </div>
        </form>
    </div>
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-2">
                <div id="contact">
                    <div class="container">
                        <div class="intro">
                            <h2>Your education and experience matters!</h2></div>
                        <form action="assets/php/contact.php" method="post" id="contact-form">
                            <div class="messages"></div>
                            <div class="controls">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label" for="form_name">Education* </label>
                                            <input class="form-control" type="text" name="name" required="" placeholder="Education" id="form_name" data-error="Vorname erforderlich.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label" for="form_lastname">Experience* </label>
                                            <input class="form-control" type="text" name="lastname" required="" placeholder="Industry Exposure" id="form_lastname" data-error="Nachname erforderlich.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="form_email">Profile URLs* </label>
                                        <input class="form-control" type="url">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="form_phone">Project URLs*</label>
                                        <input class="form-control" type="url">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="form_message">Attach CV* </label>
                                        <input type="file">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn btn-success btn-send" type="submit" value="Senden">Add Info</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<br/>
<br/>
<br/>
<br/>
<h2 class="text-center text-info">Give a quick glance to jobs posted on website!!</h2>
<br/>
<br/>
<button class="text-center text-info" type="button" onclick="loadDoc()"> Check right away!!</button>
<br/>
<br/>
<div id="demo">

</div>
<jsp:include page="Footer.jsp" />