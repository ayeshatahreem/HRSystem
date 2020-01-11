<%--
  Created by IntelliJ IDEA.
  User: ayesh
  Date: 3/13/2017
  Time: 4:06 AM
  To change this template use File | Settings | File Templates.
--%>
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
<section id="main">
    <div id="content" class="secondary">
        <div class="full-width-container">
            <h1 class="text-center text-info"><strong>Ewww !Screwed ! :3 </strong></h1>
            <div class="full-image-hover">
                <img src="assets/img/Error.png" alt="" />
            </div>
        </div>
        <div id="secondary-nav">
            <div class="container"></div>
        </div>

    </div>
</section>
<jsp:include page="Footer.jsp" />
