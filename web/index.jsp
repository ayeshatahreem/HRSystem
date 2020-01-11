<% if(session.getAttribute("Type")==null){ %>
<jsp:include page="Header.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>

    <h1 class="text-center text-info"><strong>CodeClan welcomes you!</strong></h1>
    <p class="text-center text-info"><strong>Code the dreams by joining our service-based company&nbsp; </strong></p>

<div class="alert alert-info text-center" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"> x </span></button><span class="text-success">Get your dream jobs as WE ARE HIRING GEEKS AND TECHS ! Sign up today.</span></div>
    <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" allowfullscreen src="web.mp4"></iframe>
</div>
<jsp:include page="Footer.jsp" />