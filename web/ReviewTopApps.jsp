<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% if(session.getAttribute("Type")==null){ %>
<jsp:forward page = "Error.jsp" />
<%}else if((Integer)session.getAttribute("Type")==1){%>
<jsp:include page="HRMHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
<div>
    <div class="jumbotron hero-technology">
        <h1 class="hero-title">Do final selection</h1>
        <p class="hero-subtitle">We can do anything but we cannot do everything. So come and join us right away! We are hiring. </p>
    </div>
</div>
<h1 class="text-nowrap text-center text-info">Rate Applicants!</h1>
<div class="content-wrap">
    <form>
        <div>
            <h1></h1><br>
            <div>
                <table>
                    <tbody>
                    <c:forEach items="${requestScope.S_A}" var="S_A">
                        <tr>
                            <th style="height:40px;width:675px; background:#000000; color:white">Job # </th>
                            <th style="height:40px;width:675px; background:#000000; color:white"><c:out value="${S_A.GetJobID()}"></c:out></th>
                        </tr>
                        <tr>
                            <th style="height:35px;width:675px; background:#c9efeb;">Applicant ID</th>
                            <th style="height:35px;width:675px; background:#c9efeb;"><c:out value="${S_A.GetAppID()}"></c:out></th>
                        </tr>
                        <tr>
                            <th style="height:35px;width:675px; background:#afd6d2;">Applicant Name</th>
                            <th style="height:35px;width:675px; background:#afd6d2;"><c:out value="${S_A.GetUserName()}"></c:out></th>
                        </tr>
                        <tr>
                            <th style="height:35px;width:675px; background:#c9efeb;">Rating</th>
                            <th style="height:35px;width:675px; background:#c9efeb;"><c:out value="${S_A.GetRating()}"></c:out></th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</div>

<jsp:include page="Footer.jsp" />