<%-- 
    Document   : index
    Created on : Feb 18, 2018, 4:08:33 AM
    Author     : Deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>KickStart!Get going....</title>
        <link rel="shortcut icon" href="images/iconweb.ico" />
        <link rel="stylesheet" type="text/css" href="kickStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         
        <script type="text/javascript">
                 
            var slideIndex = 0;
            window.onload = function()
            {
             showSlides();   
            };
            
            var slides,dots;

            function showSlides() {
            var i;
            slides = document.getElementsByClassName("mySlides");
            dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            slideIndex++;
            if (slideIndex> slides.length) {slideIndex = 1;}    
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";  
            dots[slideIndex-1].className += " active";
            setTimeout(showSlides, 4000); // Change image every 8 seconds
            }

            function plusSlides(position) {
            slideIndex +=position;
            if (slideIndex> slides.length) {slideIndex = 1;}
            else if(slideIndex<1){slideIndex = slides.length;}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
                slides[slideIndex-1].style.display = "block";  
                dots[slideIndex-1].className += " active";
            }
            }
            function currentSlide(index) {
            if (index> slides.length) {index = 1;}
            else if(index<1){index = slides.length;}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
                slides[index-1].style.display = "block";  
                dots[index-1].className += " active";
            }
        }


 </script>
 
    </head>
    <body>
        
        
    <div id="section1">    
        <div class="content">
            <div class="top">
                <h1>KickStart<small>Get Started</small>....</h1>
            </div>
            <div class="login">
                <button id="myBtn">Login</button>
                <a href="#section2"><span class="otherPage">  ABOUT </span></a>
                <button id="myBtn1"> Register</button>
            </div>
        </div>
        <!-- The Modal -->
        <div id="myModal" class="modal">
        <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                
                <div align="center">
                    
        <form action="AdminLoginDao.jsp" name="login" onsubmit="return check()">
            <table cellpadding="10">
                <tr>
                    <th colspan="2">Admin Login</th>
                </tr>        
                
                <tr>
                    <td><b>Email:</b></td>
                    <td><input type="email" name="email" required/></td>
                </tr>
                
                <tr>
                    <td><b>Password:</b></td>
                    <td><input type="password" name="password" required/></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"/></td>
                </tr>
            </table>
        </form>
        </div>
        
    </div>
        </div>
        </div>
        <!--The register -->
        <div id="myregister" class="register">
            <!--register content-->
            <div class="register-content">
                <span class="close">&times;</span>
                <div align="center">
                    <form action="RegisterDao.jsp" name="register" onsubmit="return check()">
                        <table cellpadding="10">
                            <tr>
                    <th colspan="2">Register Student</th>
                </tr>        
                
                <tr>
                    <td><b>Name:</b></td>
                    <td><input type="text" name="name" required/></td>
                </tr>
                
                <tr>
                    <td><b>Email:</b></td>
                    <td><input type="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><b>Password:</b></td>
                    <td><input type="password" name="password" required/></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register"/></td>
                </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        

        
        
        <div class="horizontal">
                <ul>
                  <li><a class="activemagic" href="index.html">Home</a></li>
                  <li><a href="">Quotes</a></li>
                  <li><a href="">Indori</a></li>
                  <li><a href="">About</a></li>
                </ul>
        </div>   
        
        <div class="slideshow-container">
                
            <div class="mySlides fade">
                <img src="images/elon.jpg" style="width: 560px;height: 373px;">              
            </div>
                
            <div class="mySlides fade">                
                <img src="images/bill.jpg" style="width: 560px;height: 373px;">               
            </div>
                
            <div class="mySlides fade">
                <img src="images/reid.jpg" style="width: 560px;height: 373px;">
            </div>
            
                <a class="prev" onclick="plusSlides(-1)">&#10094</a>
                <a class="next" onclick="plusSlides(1)">&#10095</a>
        </div>     
        <div class="dotty">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
        
        
        <div class="story-container">
        
            <div class="startup">
                 <h2>STARTUP OF THE WEEK!</h2>   
            </div>      <div id="section2">                                            
            <div class="story">
                <hr><h2 style="color: #32997e;">Wovoyage!</h2> <hr>
                  <h3>Rashmi Chadha is the Founder of Wovoyage, a women-friendly travel startup that 
                      aims to encourage women to travel the world while providing them with outstanding
                      services at all times. Established in 2016, Wovoyage offers a variety of customizable 
                      packages to suit all traveling needs of travellers. The team members at Wovoyage have
                      various areas of expertise in order to cover all of their clients’ travel needs.
                  </h3>                             
            </div>
        </div>    
    </div>        
         
         
            <div class="about">
                <h2>ABOUT</h2>
            </div>
            <div class="description">
                A website to test and enhance your entrepreneurial skills.
            </div>
            <div class="slideshow1-container">

            <div class="mySlides1 fade1">
                   <img src="images/elon.jpg" height="385" width="600" alt="elon">
            </div>

            <div class="mySlides1 fade1">
                   <img src="images/bill.jpg"  height="385" width="600" alt="bill">
            </div>

            <div class="mySlides1 fade1">
                   <img src="images/reid.jpg" height="385" width="600" alt="reid">
            </div>

            </div>


            <div style="text-align:center">
                <span class="dot1" onclick="currentSlide1(1)"></span> 
                <span class="dot1" onclick="currentSlide1(2)"></span> 
                <span class="dot1" onclick="currentSlide1(3)"></span> 
            </div>
         
        
        
        <div class="last">
            <div class="heple">
                 <div class="design">
                <h2> Designed and Developed By -</h2>
                </div>
                <div class="author_name"> <h2>Deepak Choudhary </h2></div>
                <div class="author_des">  (A Computer Science & Engineering Student) </div>
            
                <div class="my_links"><!-- Add font awesome icons -->
                    <a href="https://www.facebook.com/deepak.choudhary.564813" class="fa fa-facebook" target="_blank"></a>
                    <a href="https://www.linkedin.com/in/deepak-choudhary-b0585947/" class="fa fa-linkedin" target="_blank"></a>
                    <a href="https://plus.google.com/u/0/107963572715485547583" class="fa fa-google" target="_blank"></a></div>
                                
                <div class="feed"><h2>Any Feedback</h2></div></div>
           

                <div class="form">
                        
                    <form action="feed.jsp">
                        <table>
                            <tr>
                                <td>
                                    <input type="text" name="txtName" value="" maxlength="50" placeholder="Name"
                                           >
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="txtEmail" maxlength="50" placeholder="Email">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="txtMsg" maxlength="500" placeholder="Message">
                                </td>
                            </tr>
                            <tr>
                                <td> <input type="submit" value="Submit"></td>
                            </tr>
                        </table>
                    </form>
                </div>                
               </div>
    

        
        
        <script src="jquery-3.3.1.min.js"></script>
        <script>
            
            // Get the modal
            var modal = document.getElementById('myModal');

            // Get the button that opens the modal
            var btn = document.getElementById("myBtn");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks the button, open the modal 
            btn.onclick = function() {
                modal.style.display = "block";
            };

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() {
                modal.style.display = "none";
            };

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            };

        </script>
        <script>
            
            // Get the modal
            var modal1 = document.getElementById('myregister');

            // Get the button that opens the modal
            var btn1 = document.getElementById("myBtn1");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks the button, open the modal 
            btn1.onclick = function() {
                modal1.style.display = "block";
            };

            // When the user clicks on <span> (x), close the modal
                       span.onclick = function() {
                modal.style.display = "none";
            };
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target === modal1) {
                    modal1.style.display = "none";
                }
            };

        </script>
        
        <script>
            $('a[href^="#section2"]').click(function(){
             $('html, body').animate({
                 scrollTop: $( $(this).attr('href') ).offset().top
             }, 500);
             return false;
            });


            </script>
        <script>               
        var slideIndex1 = 0;
	var slides1 = document.getElementsByClassName("mySlides1");

        showSlides1();

        function showSlides1() {    
        var i;    
        var dots1 = document.getElementsByClassName("dot1");	 
            for (i = 0; i < slides1.length; i++) {
                slides1[i].style.display = "none"; 
            }
            slideIndex1++;
             for (i = 0; i < dots1.length; i++)
                 {
                  dots1[i].className = dots1[i].className.replace(" active", "");
                 }
  
    
            if (slideIndex1> slides1.length) {slideIndex1 = 1} 
                slides1[slideIndex1-1].style.display = "block"; 
                dots1[slideIndex1-1].className += " active";
                setTimeout(showSlides1, 5000); // Change image every 5 seconds
}

                function currentSlide1(no) {
            var i;    
            for (i = 0; i < slides1.length; i++) {
                slides1[i].style.display = "none"; 
            }

            slideIndex1 = no;
            slides1[no-1].style.display = "block";
      
        }
        
        function plusSlides1(n) {
            var newslideIndex = slideIndex1 + n;
                if(newslideIndex < 4 && newslideIndex > 0){
                    currentSlide1(newslideIndex);
                }
        }
        </script>
       
       
    </body>
</html>
