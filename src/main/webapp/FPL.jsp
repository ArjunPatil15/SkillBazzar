<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FPL Enrollment Page</title>
    <%@include file="bootStrapSupport.jsp" %>  <!-- JSP file inclusion -->

    <style>
        /* BODY Styling */
        body {
            background: linear-gradient(to right, #74ebd5, #9face6);
            min-height: 100%;
            font-family: 'Poppins', Arial, sans-serif;
            padding: 0;
            margin: 0;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #007bff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: white;
            text-shadow: 1px 1px #000;
            text-decoration: none;
        }

        .navbar-nav {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .navbar-nav a {
            color: white;
            text-decoration: none;
            font-size: 1rem;
            padding: 10px 15px;
            border-radius: 5px;
        }

        .navbar-nav a:hover {
            background-color: #0056b3;
        }
        
        
        
        

        h1 {
            color: white;
            font-size: 2.5rem;
            text-align: center;
            text-shadow: 3px 3px 5px rgba(0, 0, 0, 0.5);
            margin: 30px 0;
        }

        /* Course Card Styling */
        .course-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            padding: 30px;
            margin-top: 30px;
            max-width: 600px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1.5s ease-in-out;
            margin: 30px auto;
        }

        /* Image Styling */
        .course-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        /* Course Description Text */
        .course-description {
            font-size: 1.1rem;
            color: #333;
            line-height: 1.6;
            text-align: left;
            margin-bottom: 20px;
        }

        .course-description ul {
            list-style-type: disc;
            margin-left: 20px;
        }

        .course-description li {
            margin-bottom: 10px;
        }

        /* Purchase Button Styling */
        .purchase-button {
            background: linear-gradient(45deg, #28a745, #34d058);
            border: none;
            color: white;
            padding: 15px 30px;
            font-size: 1.2rem;
            font-weight: bold;
            cursor: pointer;
            border-radius: 25px;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 60%;
            text-align: center;
            box-shadow: 0 5px 15px rgba(40, 167, 69, 0.3);
            transition: all 0.3s ease;
        }

        .purchase-button:hover {
            background: linear-gradient(45deg, #218838, #28a745);
            box-shadow: 0 8px 20px rgba(33, 136, 56, 0.5);
            transform: translateY(-5px);
        }

        /* Fade-in Animation for the Course Card */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

   

    <h1>!!Enrollment Page!!</h1>

    <%@include file="StudentNavbar.jsp" %>  <!-- Include Navbar for Students -->

    <h1>!!Great Choice!!</h1>

    <!-- Course 1: TechniHongo Course Description -->
    <div class="course-card">
        <img class="course-image" src="https://i.ytimg.com/vi/k1qUIj2mi3Q/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDYeP9nhsMVFSstK-wEF1G1-xO_uA" class="card-img-top" alt="Course 2" alt="TechniHongo Course Image">

        <p class="course-description">
    <strong>Fundamentals of Programming Languages (FPL) [SPPU - 2024 Pattern] </strong><br><br>
    <h2>Course Id : 2</h2>

    Based on SPPU 2024 New Syllabus Pattern.<br><br>

    Fundamentals of Programming Languages (FPL) is one of the most Fundamental and Important subject in First Year [FE] Engineering. This course is specially designed by strictly considering SPPU's Revised New 2024 Syllabus.<br><br>

    This course will help you to get highest and dream marks in FPL. This course will also help you for IT Industry Interview preparation, Programming Competitions, GATE Examination preparation. BUY IT NOW and achieve Excellence in Engineering Study.<br><br>


    <strong>Validity :</strong> 7 Months.<br>
    <strong>Single Mobile Device Access</strong><br>
    <strong>No Offline Downloads.</strong><br>
    <strong> Web Access.</strong>
</p>


        <!-- Purchase Button -->
         <form action="Purchase.jsp" method="post">
        <button type="submit" class="purchase-button" >Purchase</button>
        </form>
    </div>

</body>
</html>
