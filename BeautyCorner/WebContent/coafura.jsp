<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*, java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>

	<meta charset="utf-8">
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Coafură</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">

    <!-- Custom styles for this template -->
    <link href="css/agency.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigatie -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.jsp">Beauty Corner</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#services">Servicii</a>
            </li>
             <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownServices" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Prețuri
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownServices">
                <a class="dropdown-item" href="machiaj.jsp">Machiaj</a>
                <a class="dropdown-item" href="coafura.jsp">Coafură</a>
                <a class="dropdown-item" href="oferte.jsp">Oferte</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#about">Despre</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#team">Echipa</a>
            </li>
            
            <% 
         	try {
         	session = request.getSession(false);
         	String username = session.getAttribute("username").toString();
         	int id_user = Integer.parseInt(session.getAttribute("id_user").toString());
         	if (session != null && (!username.equals("") && username!=null)) {
            		
            %>
            	<li class="nav-item">
           		<a class="nav-link js-scroll-trigger" href="http://localhost:8081/Booking/index.jsp?id_user=<%=id_user%>">Programare</a>
            	</li>
            
          		<li class="nav-item">
           		<a class="nav-link js-scroll-trigger" href="profil.jsp">Profil</a>
           		</li>
            
            	<li class="nav-item">
            	<a class="nav-link js-scroll-trigger" href="logout.jsp">Logout</a>
            	</li>
           		
            <% } else { %>
            	<li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
                </li>
                
                <li class="nav-item">
          		<a class="nav-link js-scroll-trigger" href="register.jsp">Register</a>
             	</li>	
            		
             <%  } 
         	} catch(Exception e) { %>
             	
             	<li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
                </li>
                
                <li class="nav-item">
          		<a class="nav-link js-scroll-trigger" href="register.jsp">Register</a>
             	</li>	
             
             <%} %> 
             
          </ul>
        </div>
      </div>
    </nav>

    <!-- Servicii -->
    <section id="preturi">
    <div class="container-table100">
      <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Coafură</h2>
            <h3 class="section-subheading text-muted">Salonul Beauty Corner oferă următoarele servicii de coafură și frizerie:</h3>
      </div>
      <div class="wrap-table100">
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1" style="text-align: center; width: 33%;">Serviciu</th>
                  <th class="cell100 column2" style="text-align: center; width: 33%;">Pret</th>
                  <th class="cell100 column3" style="text-align: center; width: 33%;">Durata</th>
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Spălat + tratament</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">20 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">30 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Tuns</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">50 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">30 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Uscat + aranjat</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">50 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">30 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Vopsit</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">100 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">60 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Coafat ocazie</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">150 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">60 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Coafat mireasă</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">200 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">60 minute</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>

    <!-- Portfoliu -->
    <section class="bg-light" id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Galerie</h2>
            <h3 class="section-subheading text-muted">Pentru a vizualiza mai multe detalii aferente fiecărui serviciu de coafură/frizerie
            te invităm să răsfoiești portofoliul:</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/spalat.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Spălat</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/tuns.jpeg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Tuns</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/aranjat.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Aranjat</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/vopsit.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Vopsit</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/coafat.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Coafat ocazie</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/coafatmireasa.jpeg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Coafat mireasă</h4>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Beauty Corner 2019</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="https://twitter.com/beautycorner_17">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.facebook.com/Beauty-Corner-1721063864855508/">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.instagram.com/explore/locations/228446904/beauty-corner/">
                  <i class="fab fa-instagram"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <!-- Portfolio Modals -->

    <!-- Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Spălat + tratament</h2>
                  <p class="item-intro text-muted">Pentru un păr sănătos...</p>
                  <img class="img-fluid d-block mx-auto" src="img/spalat1.jpg" alt="">
                   <!--<p style="text-align: justify; text-justify: inter-word;">Text<br><p>-->
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Înapoi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Tuns</h2>
                  <p class="item-intro text-muted">Pentru un păr rezistent si sănătos...</p>
                  <img class="img-fluid d-block mx-auto" src="img/tuns1.jpg" alt="">
                  <!--<p style="text-align: justify; text-justify: inter-word;">Text<br><p>-->
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Înapoi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Uscat + aranjat</h2>
                  <p class="item-intro text-muted">Fii în centrul atenției...</p>
                  <img class="img-fluid d-block mx-auto" src="img/aranjat1.jpg" alt="">
                  <!--<p style="text-align: justify; text-justify: inter-word;">Text<br><p>-->
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Înapoi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Vopsit</h2>
                  <p class="item-intro text-muted">Pentru un păr cu strălucire...</p>
                  <img class="img-fluid d-block mx-auto" src="img/vopsit1.jpg" alt="">
                 <!--<p style="text-align: justify; text-justify: inter-word;">Text<br><p>-->
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Înapoi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Coafat ocazie</h2>
                  <p class="item-intro text-muted">Pentru o zi de neuitat...</p>
                  <img class="img-fluid d-block mx-auto" src="img/coafat1.jpg" alt="">
                  <!--<p style="text-align: justify; text-justify: inter-word;">Text<br><p>-->
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Înapoi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Coafat mireasă</h2>
                  <p class="item-intro text-muted">Pentru cea mai specială zi din viața ta...</p>
                  <img class="img-fluid d-block mx-auto" src="img/coafatmireasa1.jpg" alt="">
                 <!--<p style="text-align: justify; text-justify: inter-word;">Text<br><p>-->
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Înapoi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>

  </body>

</html>