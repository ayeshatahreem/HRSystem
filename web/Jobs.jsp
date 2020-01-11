
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
    <div>
        <div class="jumbotron hero-technology">
            <h1 class="hero-title">We Are Hiring Coders</h1>
            <p class="hero-subtitle">We can do anything but we cannot do everything. So come and join us right away! We are hiring. </p>
        </div>
    </div>
    <h1 class="text-nowrap text-center text-info">What's new ?</h1>
<div class="content-wrap">
    <form action="SearchJob" method="post" >
        <div style="top: 25%" class="login-form" >
            <div class="form-group ">
                <i class="fa fa-search"></i>
                <select class="form-control" name="Type" id="RType">
                    <option selected disabled>Job Type</option>
                    <option value="Sin">Graphic Designer</option>
                    <option value="Do">Software Engineer</option>
                    <option value="Sui">Android Developer</option>
                </select>
            </div>
            <button type="submit" class="log-btn">Apply for Recently Posted Jobs</button>
        </div>
    </form>
</div>
    <div>
    <div class="container">
        <div class="row product-list">
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/oo.png" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Graphic Desginer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 1-1-17 </a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">5830 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">5+ years experience in the industry with a degree in either field of 3D design,communication design,fine art,graphic design.</p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 1-4-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/se.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Software Engineering</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 16-1-17 </a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">8882 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">A graduate of MIT, Stanford or any other reputable univeristy of USA with 3+ years industry exposure. Hacking knowledge will be a plus.</p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 9-3-17 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/jk.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Senior 3D Graphic Designer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 16-1-17 </a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">8092 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">Demand for British graphic designers with a degree in either field of 3D design,communication design,fine art,graphic design. </p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 9-4-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/lk.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Web Programmer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 17-1-17 </a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">9982 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">5+ years experience in the industry with a know-how of PHP as back-end language. Strong concepts and ideas of MVC model.</p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 8-4-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/ae.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Android App Developer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 17-1-17</a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">8652 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">Demand for a Trump supporter having strong grip in mobile app development and 5 apps having downloads of 20K+ on PlayStore</p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 6-3-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/se.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Senior Software Tester</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 17-1-17 </a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">8782 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">A graduate of MIT, Stanford or any other reputable univeristy of USA with 3+ years industry exposure. SQL Injection knowledge will be a plus. </p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 5-5-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/ae.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Senior Android Developer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 18-1-17 </a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">8278 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">Must have strong grip in mobile app development and 3 apps with downloads of 30K+ on App Store or PlayStore.</p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 3-3-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/gdd.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Senior Fine Arts Designer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted:18-1-17</a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">5572 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">A graduate of designing school of any reputable univeristy of France and Spain with 3+ years industry exposure. </p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 7-7-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 product-item animation-element slide-left">
                <div class="product-container">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" class="product-image"><img src="assets/img/lk.jpg" /></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <h2><a href="#">Web Developer</a></h2></div>
                        <div class="col-xs-4"><a href="#" class="small-text">Posted: 18-1-17</a></div>
                    </div>
                    <div class="product-rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><a href="#" class="small-text">7782 reviews</a></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <p class="product-description">5+ years experience in ASP.NET and C# with an A+ in web programming and database courses. Know-how of SEO skills will be a bonuspoint. </p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <button class="btn btn-default" type="button">Apply Now!</button>
                                </div>
                                <div class="col-xs-6">
                                    <p class="product-price">Deadline: 3-5-17</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-9">
                
            </div>
            <div class="col-md-3">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/gdd.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Graphic Designer</h5>
                                            <h5 class="price-text-color">
                                                Deadline: 27-2-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/oo.png" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Junior Eng.</h5>
                                            <h5 class="price-text-color">
                                               Deadline: 27-8-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/gdd.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Graphics Expert</h5>
                                            <h5 class="price-text-color">
                                               Deadline: 9-6-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/oo.png" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Front-end Designer</h5>
                                            <h5 class="price-text-color">
                                               Deadline: 28-2-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/gdd.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5> Graphics Expert</h5>
                                            <h5 class="price-text-color">
                                               Deadline: 8-5-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/oo.png" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Senior Designer</h5>
                                            <h5 class="price-text-color">
                                                Deadline: 20-3-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/gdd.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Graphic Designer</h5>
                                            <h5 class="price-text-color">
                                                Deadline: 7-3-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="assets/img/oo.png" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>3D Designer</h5>
                                            <h5 class="price-text-color">
                                                Deadline: 28-4-17</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to favourite</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Apply now</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="Footer.jsp" />