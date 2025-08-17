<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="AdminMainPage.jsp">
            <span style="color: #4ecdc4;">⚙️</span> Skill-Bazzar Admin
        </a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="AdminMainPage.jsp">
                        <span style="margin-right: 5px;">🏠</span>Dashboard
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="studentDropdown" 
                       role="button" data-toggle="dropdown" aria-haspopup="true" 
                       aria-expanded="false">
                        <span style="margin-right: 5px;">👨‍🎓</span>Student Management
                    </a>
                    <div class="dropdown-menu" aria-labelledby="studentDropdown">
                        <a class="dropdown-item" href="AdminPayments.jsp">
                            <span style="margin-right: 8px;">💰</span>Student Enrollment
                        </a>
                        <a class="dropdown-item" href="AdminDisplayStudent.jsp">
                            <span style="margin-right: 8px;">📋</span>Display Students
                        </a>
                    </div>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="instructorDropdown" 
                       role="button" data-toggle="dropdown" aria-haspopup="true" 
                       aria-expanded="false">
                        <span style="margin-right: 5px;">👨‍🏫</span>Instructor Management
                    </a>
                    <div class="dropdown-menu" aria-labelledby="instructorDropdown">
                        <a class="dropdown-item" href="AdminDisplayInstructor.jsp">
                            <span style="margin-right: 8px;">📋</span>Display Instructors
                        </a>
                    </div>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Sales.jsp">
                        <span style="margin-right: 5px;">📊</span>Sales Analytics
                    </a>
                </li>
            </ul>
            
            <!-- Logout Button on the right-most corner -->
            <form class="form-inline my-2 my-lg-0">
                <a href="index.jsp" class="btn btn-danger">
                    <span style="margin-right: 5px;">🚪</span>Logout
                </a>
            </form>
        </div>
    </div>
</nav>
