<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Datepicker Stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/css/bootstrap-datepicker.min.css">

    <!-- Template Stylesheet -->

    <!-- Additional Styles for Date Picker -->
    <style>
        .datepicker-dropdown {
            z-index: 9999 !important;
        }
    </style>
</head>
<body>

    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="booking p-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-6 text-white">
                        <h6 class="text-white text-uppercase">Feedback</h6>
                        <p class="mb-4">You can send feedback about your experience.</p>
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-white mb-4">Send Feedback</h1>
                        <form action="CustomerFeedbackServlet" method="post" onsubmit="return validateForm()">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="input-group date">
                                        <input name="date" type="text" class="form-control" id="datepicker" placeholder="Date" readonly />
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="bi bi-calendar"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input name="name" type="text" class="form-control bg-transparent" id="name" placeholder="Your Name">
                                        <label for="name">Name</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea name="feedbacks" class="form-control bg-transparent" placeholder="Special Request" id="message" style="height: 100px"></textarea>
                                    <label for="message">Feedback</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-outline-light w-100 py-3" type="submit" name="submit">Send Feedback</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Bootstrap Datepicker Script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.min.js"></script>

    <!-- Custom JavaScript for Date Picker and Validation -->
    <script>
        // Set up the datepicker
        $(document).ready(function () {
            var currentDate = new Date();
            $('#datepicker').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                startDate: currentDate,
                endDate: currentDate,
                todayHighlight: true,
            });
        });

        // Form validation function
        function validateForm() {
            var name = document.getElementById('name').value;
            var feedbacks = document.getElementById('message').value;

            if (!name || !feedbacks) {
                alert('Please fill in all fields.');
                return false;
            }

            return true;
        }
    </script>

</body>
</html>
