<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==2){%>
<jsp:include page="ApplicantHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
<div>
    <div class="jumbotron hero-technology">
        <h1 class="hero-title">We Are Hiring Coders</h1>
        <p class="hero-subtitle">We can do anything but we cannot do everything. So come and join us right away! We are hiring. </p>
    </div>
</div>
<h1 class="text-nowrap text-center text-info">Apply Right Away!</h1>
<div class="content-wrap">
    <form action="ApplyJob" method="post">
        <div>
            <h1>By selecting a radio button</h1><br>
            <div>
                <table>
                    <tbody>
                    <c:forEach items="${requestScope.S_Jobs}" var="SJob">
                    <tr>
                        <th style="height:40px;width:675px; background:#000000; color:white">Job # </th>
                        <th style="height:40px;width:675px; background:#000000; color:white"><c:out value="${SJob.GetJobID()}"></c:out></th>
                    </tr>
                    <tr>
                        <th style="height:35px;width:675px; background:#c9efeb;">Job Title</th>
                        <th style="height:35px;width:675px; background:#c9efeb;"><c:out value="${SJob.GetJobTitle()}"></c:out></th>
                    </tr>
                    <tr>
                         <th style="height:35px;width:675px; background:#afd6d2;">Qualification</th>
                         <th style="height:35px;width:675px; background:#afd6d2;"><c:out value="${SJob.GetJobQualification()}"></c:out></th>
                    </tr>
                    <tr>
                         <th style="height:35px;width:675px; background:#c9efeb;">Experience</th>
                         <th style="height:35px;width:675px; background:#c9efeb;"><c:out value="${SJob.GetJobExperience()}"></c:out></th>
                    </tr>
                    <tr>
                        <th style="height:35px;width:675px; background:#afd6d2;">Deadline</th>
                        <th style="height:35px;width:675px; background:#afd6d2;"><c:out value="${SJob.GetJobDeadline()}"></c:out></th>
                    </tr>
                    <tr>
                         <th style="height:35px;width:675px; background:#c9efeb;">Description</th>
                         <th style="height:35px;width:675px; background:#c9efeb;" ><c:out value="${SJob.GetJobDescription()}"></c:out></th>
                    </tr>
                    <tr>
                        <th style="height:35px;width:675px; background:#afd6d2;">Apply Job</th>
                        <th style="height:35px;width:675px; background:#afd6d2;"><label><input type="radio" name="Apply" value="${SJob.GetJobID()}"></label></th>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <button type="submit" class="log-btn" >Apply Job</button>
        </div>
    </form>
</div>

<jsp:include page="Footer.jsp" />