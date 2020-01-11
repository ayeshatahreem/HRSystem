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
    <div class="features-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center"> </h2>
                <p class="text-uppercase text-center text-info">HOW DOES CODECLAN DEAL WITH APPLICANTS?</p>
            </div>
            <div class="row features">
                <div class="col-md-4 col-sm-6 item"><i class="glyphicon glyphicon-edit icon"></i>
                    <h3 class="name">Advertise our jobs </h3>
                    <p class="description">People from all over the world can apply by dropping their CV.</p>
                </div>
                <div class="col-md-4 col-sm-6 item"><i class="glyphicon glyphicon-time icon"></i>
                    <h3 class="name">Always available</h3>
                    <p class="description">Always available to answer the people' queries.</p>
                </div>
                <div class="col-md-4 col-sm-6 item"><i class="glyphicon glyphicon-list-alt icon"></i>
                    <h3 class="name">Hiring and Firing</h3>
                    <p class="description">Selection is on the basis of merit and interviews conducted. </p>
                </div>
                <div class="col-md-4 col-sm-6 item"><i class="glyphicon glyphicon-send icon"></i>
                    <h3 class="name">Recruitment </h3>
                    <p class="description">People recruited do the projects, they are hired for. </p>
                </div>
                <div class="col-md-4 col-sm-6 item"><i class="glyphicon glyphicon-tasks icon"></i>
                    <h3 class="name">Interviews </h3>
                    <p class="description">Interviews are scheduled to evaluate geeks.</p>
                </div>
                <div class="col-md-4 col-sm-6 item"><i class="glyphicon glyphicon-saved icon"></i>
                    <h3 class="name">Quality </h3>
                    <p class="description">To provide quality services, we choose quality people.</p>
                </div>
            </div>
        </div>
    </div>
    <h1 class="text-center text-info">How does CodeClan deal with Clients? </h1>
    <div class="container">
  <div class="row">
    <div class="col-lg-12">
      <h3 class="text-center"></h3>
      
      <ul class="timeline">
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="assets/img/meeting.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Step One</h4>
              <h4 class="subheading">Project deal with clients</h4>
            </div>
            <div class="timeline-body">
              
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="assets/img/yt.png" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Step Two</h4>
              <h4 class="subheading">Hiring and Firing of suitable geeks on merit basis</h4>
            </div>
            <div class="timeline-body">
              
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="assets/img/ii.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Step Three</h4>
              <h4 class="subheading">
              Project's Research and Development Phase</h4>
            </div>
            <div class="timeline-body">
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="assets/img/oop.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Step Four</h4>
              <h4 class="subheading">Project's Deployment Phase</h4>
            </div>
            <div class="timeline-body">
              
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="assets/img/ds.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Bonus Step</h4>
              <h4 class="subheading">Handling best quality product to clients timely</h4>
                <div class="timeline-body">
              
            </div>
            </div>
            
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<jsp:include page="Footer.jsp" />