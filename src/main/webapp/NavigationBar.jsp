<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">
            <span style="color: #4ecdc4;">🎓</span> Skill-Bazzar
        </a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">
                        <span style="margin-right: 5px;">🏠</span>Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                        <span style="margin-right: 5px;">🔐</span>Login As
                    </a>

                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="StudentLoginPage.jsp">
                            <span style="margin-right: 8px;">👨‍🎓</span>Student
                        </a> 
                        <a class="dropdown-item" href="InstructorLoginPage.jsp">
                            <span style="margin-right: 8px;">👨‍🏫</span>Instructor
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="AdminLoginPage.jsp">
                            <span style="margin-right: 8px;">⚙️</span>Admin
                        </a>
                    </div>
                </li>
            </ul>

            <form action="CreateAccountPage.jsp" method="post" class="form-inline my-2 my-lg-0">
                <button type="submit" class="btn btn-success">
                    <span style="margin-right: 5px;">✨</span>Create Account
                </button>
            </form>
        </div>
    </div>
</nav>
