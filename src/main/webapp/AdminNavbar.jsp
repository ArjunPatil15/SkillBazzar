<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <a class="navbar-brand" href="#">SkillBazaar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="AdminMainPage.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Student
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="AdminPayments.jsp">Student Enrollment</a>
          <a class="dropdown-item" href="AdminDisplayStudent.jsp">Display Student</a>
        </div>
      </li>
       
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Instructor
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="AdminDisplayInstructor.jsp">Display Staff</a>
        </div>
      </li>
      
       <li class="nav-item active">
        <a class="nav-link" href="Sales.jsp">Sales <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    
    

    <!-- Logout Button on the right-most corner -->
    <form class="form-inline my-2 my-lg-0">
      <a href="AdminLoginPage.jsp" class="btn btn-primary my-2 my-sm-0">Logout</a>
    </form>
  </div>
</nav>
