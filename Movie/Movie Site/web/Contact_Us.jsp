<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us page</title>
  <link rel="stylesheet" type="text/css" href="assets/css/as-alert-message.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/contact_us.css">
  <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
  
  <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, rgb(0,102,255), lightblue);
            color: ;
            </style>
</head>

<body>
  <header id="site-header" class="w3l-header fixed-top">
    <!--/nav-->
    <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
      <div class="container">
          
          <!--
        <h1><a class="navbar-brand" href="index.jsp"><span class="fa fa-play icon-log" aria-hidden="true"></span>
          Ceylon Cinema </a></h1>
          -->
          <!-- if logo is image enable this-->   
	<a class="navbar-brand" href="#index.jsp">
		<img src="assets/images/logo1.png"  title="logo" style="height:80px;" />
	</a>
          
        <!-- if logo is image enable this   
                    <a class="navbar-brand" href="#index.html">
                        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                    </a> -->
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
          data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
          aria-label="Toggle navigation">
          <!-- <span class="navbar-toggler-icon"></span> -->
          <span class="fa icon-expand fa-bars"></span>
          <span class="fa icon-close fa-times"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="movies.jsp">Movies</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About</a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="Contact_Us.jsp">Contact</a>
            </li>
          </ul>

          <!--/search-right-->
          <!--/search-right-->

          <div class="Login_SignUp" id="login" style="font-size: 2rem ; display: inline-block; position: relative;">
            <!-- <li class="nav-item"> -->
            <a class="nav-link" href="sign_in.jsp"><i class="fa fa-user-circle-o"></i></a>
            <!-- </li> -->
          </div>
        </div>
        <!-- toggle switch for light and dark theme -->
        <div class="mobile-position">
          <nav class="navigation">
            <div class="theme-switch-wrapper">
              <label class="theme-switch" for="checkbox">
                <input type="checkbox" id="checkbox">
                <div class="mode-container">
                  <i class="gg-sun"></i>
                  <i class="gg-moon"></i>
                </div>
              </label>
            </div>
          </nav>
        </div>
      </div>
    </nav>
  </header>
  <!-- Contact Us Form -->
  <div class="container">
    <h4>Contact Us</h4>
    <h3>Ceylon Cinema</h3>
    <p>If you have a question regarding our services,
      feel free to contact us using the form below.</p>
    
    
    <script>
    window.onload = function() {
        // Get URL parameters
        const urlParams = new URLSearchParams(window.location.search);
        const status = urlParams.get('status');
        
        // Function to show alert with better control
        function showPersistentAlert(options) {
            // Check if asAlert is defined
            if (typeof asAlert !== 'undefined') {
                // Create alert
                const alert = asAlert(options);
                
                // Ensure alert stays visible
                if (alert) {
                    // Add custom styling to make alert more prominent
                    alert.style.zIndex = '9999';
                    alert.style.position = 'fixed';
                    alert.style.top = '20px';
                    alert.style.left = '50%';
                    alert.style.transform = 'translateX(-50%)';
                    
                    // Optional: Add close button or auto-dismiss after longer time
                    setTimeout(() => {
                        if (alert && alert.parentNode) {
                            alert.parentNode.removeChild(alert);
                        }
                    }, 5000); // Stay for 5 seconds
                }
            } else {
                // Fallback to native alert if asAlert is not available
                alert(options.message);
            }
        }

        // Show appropriate alert based on status
        if (status === 'success') {
            showPersistentAlert({
                title: 'Success',
                message: 'Your message has been submitted successfully!',
                type: 'success'
            });
        } else if (status === 'error') {
            showPersistentAlert({
                title: 'Error',
                message: 'There was a problem submitting your message. Please try again.',
                type: 'error'
            });
        }

        // Clear the URL parameters to prevent repeated alerts on page refresh
        if (status) {
            history.replaceState(null, '', window.location.pathname);
        }
    }
</script>


   <form name="contact-us-form" action="ContactUsServlet" method="post" onsubmit="return validateForm()">
      <div class="row100" id="fname-row100">
        <div class="col">
          <div class="inputBox" id="fname-inputBox">
            <input type="text" name="fname" onclick="triggerAnim('fname')"/>
            <span class="text">First Name</span>
            <span class="line" id="fname-line"></span>
          </div>
        </div>
        <div class="col">
          <div class="inputBox" id="lname-inputBox">
            <input type="text" name="lname" onclick="triggerAnim('lname')"/>
            <span class="text">Last Name</span>
            <span class="line" id="lname-line"></span>
          </div>
        </div>
      </div>
      <div class="row100" id="email-row100">
        <div class="col">
          <div class="inputBox" id="email-inputBox">
            <input type="email" name="email" pattern="[^ @]*@[^ @]*" onclick="triggerAnim('email')"/>
            <span class="text">Email ID</span>
            <span class="line" id="email-line"></span>
          </div>
        </div>
        <div class="col">
          <div class="inputBox" id="tel-inputBox">
            <input type="tel" name="m-num" onclick="triggerAnim('tel')" />
            <span class="text">Mobile Number</span>
            <span class="line" id="tel-line"></span>
          </div>
        </div>
      </div>
      <div class="row100">
        <div class="col">
          <div class="inputBox textarea">
            <textarea name="msg"></textarea>
            <span class="text">Type your message Here...</span>
            <span class="line"></span>
          </div>
        </div>
      </div>
      <div class="row100">
        <div class="col">
          <div class="submitbutton">
            <button class="btn submitbtn" type="submit">Submit</button>
          </div>
        </div>
      </div>
    </form>
  </div>
  <script type="text/javascript" src="assets/js/contact-us.js"></script>
  <script type="text/javascript" src="assets/js/as-alert-message.min.js"></script>
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <!--/theme-change-->
  <script src="assets/js/theme-change.js"></script>
  <!-- disable body scroll which navbar is in active -->
  <script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
  </script>
  <!-- disable body scroll which navbar is in active -->
  <!--/MENU-JS-->
  <script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();

      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
  <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>