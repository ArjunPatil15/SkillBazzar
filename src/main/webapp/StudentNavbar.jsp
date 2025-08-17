<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="StudentMainPage.jsp">
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
                    <a class="nav-link" href="StudentMainPage.jsp">
                        <span style="margin-right: 5px;">🏠</span>Dashboard
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="mycourses.jsp">
                        <span style="margin-right: 5px;">📚</span>My Courses
                    </a>
                </li>
            </ul>

            <!-- Logout aligned to the right -->
            <form action="Logout" method="post" class="form-inline my-2 my-lg-0">
                <button type="submit" class="btn btn-danger">
                    <span style="margin-right: 5px;">🚪</span>Logout
                </button>
            </form>
        </div>
    </div>
</nav>
