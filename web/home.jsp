<% if(session.getAttribute("Type")==null){ %>
<jsp:include page="Header.jsp" />
<%}else if((Integer)session.getAttribute("Type")==0){%>
<jsp:include page="HRPHomeHeader.jsp" />
<%}else if((Integer)session.getAttribute("Type")==1){%>
<jsp:include page="HRMHomeHeader.jsp" />
<%}else if((Integer)session.getAttribute("Type")==2){%>
<jsp:include page="ApplicantHomeHeader.jsp" />
<%}else if((Integer)session.getAttribute("Type")==3){%>
<jsp:include page="SMEHomeHeader.jsp" />
<%}else{%>
<jsp:forward page = "Error.jsp" />
<%}%>
    <h1 class="text-center text-primary"> </h1>
    <div class="container">
    <div id="mmyCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="assets/img/oop.jpg">
                
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="assets/img/webg.png">
                
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="assets/img/oop.jpg">
               
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="assets/img/webg.png">
               
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        
    </div>
    <!-- End Carousel -->
</div>

    <h1 class="text-center text-primary">Our Brief Intro </h1>
    <div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="assets/img/aa.png">
                <div class="carousel-caption">
                    <h3>How are we known?</h3>
                    <p>Hiring and firing geeks and experts from computer science background to code the dreams of our clients </p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="assets/img/bb.png">
                <div class="carousel-caption">
                    <h3>What makes us unique?</h3>
                    <p>Our 1000+ successful and time-delivered projects have made us internationally recognized</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="assets/img/cc.png">
                <div class="carousel-caption">
                    <h3>Why are we acknowledged worldwide?</h3>
                    <p>Because of our wisely and timely investment decisions </p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="assets/img/dd.png">
                <div class="carousel-caption">
                    <h3>What makes us beautiful?</h3>
                    <p>Our services reflection on our clients' dreams</p>
                </div>
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        
    </div>
    <!-- End Carousel -->
</div>

<jsp:include page="Footer.jsp" />