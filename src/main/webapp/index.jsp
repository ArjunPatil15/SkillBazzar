<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@include file="bootStrapSupport.jsp" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skill-Bazzar - Welcome to Learning Excellence</title>
</head>

<body>
    <div class="container">
        <h1 class="fade-in-up">🎓 Welcome To Skill-Bazzar 🎓</h1>
        <p class="text-center text-white mb-4" style="font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
            Discover, Learn, and Master New Skills with Expert Instructors
        </p>
        
        <%@include file="NavigationBar.jsp" %>

        <!-- Hero Carousel Section -->
        <div class="main-content fade-in-up">
            <div id="imageCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://i.ytimg.com/vi/Wx0SJa8L4dA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBTtAm9b620BcU71XBI2vyMJDWqjA"
                             class="d-block w-100" alt="Programming Course">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Master Programming</h3>
                            <p>Learn from industry experts</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://www.ninfinitysolutions.com/assets/img/cover.png" class="d-block w-100" alt="Technology Solutions">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Technology Solutions</h3>
                            <p>Cutting-edge learning experiences</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://i.ytimg.com/vi/k1qUIj2mi3Q/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDYeP9nhsMVFSstK-wEF1G1-xO_uA"
                             class="d-block w-100" alt="Web Development">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Web Development</h3>
                            <p>Build modern web applications</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://i.ytimg.com/vi/ZVTLndiTWQ8/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBKHH3rqMkEmN9J0JeAhFPl8brgMQ" 
                             alt="Data Science">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Data Science</h3>
                            <p>Unlock insights from data</p>
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <!-- Features Section -->
        <div class="row mt-5">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>🚀 Expert Instructors</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Learn from industry professionals with years of experience in their respective fields.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>📚 Quality Content</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Access high-quality, curated content designed to help you master new skills quickly.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>💡 Flexible Learning</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Learn at your own pace, anytime, anywhere with our flexible learning platform.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Call to Action -->
        <div class="text-center mt-5 mb-5">
            <h3 class="text-white mb-3">Ready to Start Your Learning Journey?</h3>
            <a href="CreateAccountPage.jsp" class="btn btn-primary btn-lg mr-3">Get Started</a>
            <a href="StudentLoginPage.jsp" class="btn btn-success btn-lg">Sign In</a>
        </div>
    </div>
</body>
</html>
