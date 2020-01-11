<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==3){%>
<jsp:include page="SMEHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
<div>
    <div class="jumbotron hero-technology">
        <h1 class="hero-title">Rating Applicants</h1>
        <p class="hero-subtitle">We can do anything but we cannot do everything. So come and join us right away! We are hiring. </p>
    </div>
</div>
<h1 class="text-nowrap text-center text-info">Rate Applicants!</h1>
<div class="content-wrap">
    <form action="ReviewApplicants" method="post">
        <div>
            <h1></h1><br>
            <div>
                <table>
                    <tbody>
                    <c:forEach items="${requestScope.S_GRate}" var="SG">
                        <tr>
                            <th style="height:40px;width:675px; background:#000000; color:white">Job # </th>
                            <th style="height:40px;width:675px; background:#000000; color:white"><c:out value="${SG.GetJobID()}"></c:out></th>
                        </tr>
                        <tr>
                            <th style="height:35px;width:675px; background:#c9efeb;">Applicant ID</th>
                            <th style="height:35px;width:675px; background:#c9efeb;"><c:out value="${SG.GetAppID()}"></c:out></th>
                        </tr>
                        <tr>
                            <th style="height:35px;width:675px; background:#afd6d2;">Applicant Name</th>
                            <th style="height:35px;width:675px; background:#afd6d2;"><c:out value="${SG.GetUserName()}"></c:out></th>
                        </tr>
                        <tr>
                            <th style="height:35px;width:675px; background:#c9efeb;">Rate Applicant</th>
                            <th style="height:35px;width:675px; background:#c9efeb;"><label><input type="radio" name="appid" value="${SG.GetAppID()}"></label></th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <button type="submit" class="log-btn" >Rate Applicant!</button>
        </div>
    </form>
</div>

<jsp:include page="Footer.jsp" />