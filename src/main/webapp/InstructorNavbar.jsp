<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="InstructorMainPage.jsp">
            <span style="color: #4ecdc4;">👨‍🏫</span> Skill-Bazzar
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left-aligned menu -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="InstructorMainPage.jsp">
                        <span style="margin-right: 5px;">🏠</span>Dashboard
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="courseDropdown" 
                       role="button" data-toggle="dropdown" aria-haspopup="true" 
                       aria-expanded="false">
                        <span style="margin-right: 5px;">📚</span>Courses
                    </a>
                    <div class="dropdown-menu shadow-lg border-0 rounded-lg"
                        aria-labelledby="courseDropdown">
                        <a class="dropdown-item" href="InstructorAddCourse.jsp">
                            <span style="margin-right: 8px;">✨</span>Create Course
                        </a>
                        <a class="dropdown-item" href="InstructorAddLecture.jsp">
                            <span style="margin-right: 8px;">🎥</span>Add Lecture
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="InstructorMyCourse.jsp">
                            <span style="margin-right: 8px;">📖</span>My Courses
                        </a>
                    </div>
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
