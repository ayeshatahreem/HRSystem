<% if(session.getAttribute("Type")==null){ %>
<jsp:include page = "Header.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
<%@ include file = "includeFiles.jsp" %>

    <div class="login-card"><img src="assets/img/oop.jpg" class="profile-img-card" />
    <p class="profile-name-card"> </p>
    <form class="form-signin" action="/LogIn" method="post"><span class="reauth-email"> </span>
        <input class="form-control" type="text" name="uname" placeholder="User Name"  id="uname" onkeypress="isValidName(event)" required/>
        <input type="password" name="password" required placeholder="Password" class="form-control" id="password" required/>
        <div class="checkbox">
            <div class="checkbox">
                <label>
                    <input type="checkbox" />Remember me</label>
            </div>
        </div>

        <button class="btn btn-info btn-block btn-lg btn-signin" type="submit" id="ajaxButton" onclick = "this.submit.form();">Sign in</button>
        <button class="btn btn-info btn-block btn-lg btn-signin" type="submit">Continue using LinkedIn</button>
    </form><a href="#" class="forgot-password">Forgot your password?</a></div>
<jsp:include page="Footer.jsp" />