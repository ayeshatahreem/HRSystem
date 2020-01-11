    <% if(session.getAttribute("Type")==null){ %>
    <jsp:include page="Header.jsp" />
    <%}else{%>
    <jsp:forward page = "Error.jsp" />
    <%}%>
    <%@ include file="includeFiles.jsp" %>
        <div class="register-photo">
            <div class="form-container">
                <div class="image-holder"></div>
                <form method="post" action="SignUp">
                    <h2 class="text-nowrap text-center text-info">New to CodeClan ? Register.</h2>
                    <div class="form-group">
                        <input class="form-control" type="text" name="uname" placeholder="User Name" onkeypress="isValidName(event)" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="email" name="email" placeholder="Email" autocomplete="on" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="password" required="" placeholder="Password( 6 to 15 digits)" maxlength="15" minlength="6">
                    </div>
                    <div class="dropdown">
                        <select name="UserType" class="form-control" placeholder="Please Select">
                            <option value="APP">Applicant</option>
                            <option value="HRM">Human Resource Manager</option>
                            <option value="HRP">Humane Resource Personnel</option>
                            <option value="SME">Subject Matter Expert</option>
                        </select>
                    </div>
    <div class="form-group">
     </div>
    <div class="form-group"></div>
    <div class="form-group"><a href="login.jsp" class="already">You already have an account? Login here.</a></div>
    <div class="form-group">
    <button class="btn btn-info btn-block" type="submit" onclick = "this.submit.form();">Sign Up</button>
    </div><a class="btn btn-default btn-lg" role="button" href="https://itunes.apple.com/us/genre/ios/id36?mt=8"><i class="fa fa-apple"></i> We are Available on the App Store</a>
    <a class="btn btn-default btn-lg" role="button" href="https://play.google.com/store?hl=en"><i class="fa fa-google"></i> We are Available on the Play Store</a>
    </form>
    </div>
    </div>

    <jsp:include page="Footer.jsp" />