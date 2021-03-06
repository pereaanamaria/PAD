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

    <title>Machiaj</title>

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
            <h2 class="section-heading text-uppercase">Machiaj</h2>
            <h3 class="section-subheading text-muted">Salonul Beauty Corner oferă următoarele servicii de machiaj profesional:</h3>
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
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Aplicare gene false</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">50 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">30 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Machiaj de zi</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">100 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">60 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Machiaj de ocazie</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">150 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">90 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Machiaj editorial</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">200 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">90 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Machiaj de mireasă</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">250 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">120 minute</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Machiaj cu efecte speciale</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">250 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">120 minute</td>
                </tr>

                <tr class="row100 body">
                  <td style="text-align: center;" colspan=4>* La oricare serviciu de machiaj ales, beneficiezi de aplicarea genelor false la un preț promoțional de 30 RON.</td>
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
            <h3 class="section-subheading text-muted">Pentru a vizualiza mai multe detalii aferente fiecărui serviciu de machiaj profesional și a determina care tip satisface cerințele tale, te invităm să răsfoiești portofoliul:</h3>
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
              <img class="img-fluid" src="img/gene.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Gene</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/zi.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Zi</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/ocazie.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Ocazie</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/editorial.jpeg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Editorial</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/mireasa.jpeg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Mireasă</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/efecte.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Efecte speciale</h4>
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
                  <h2 class="text-uppercase">Gene false</h2>
                  <p class="item-intro text-muted">Pentru o privire seducătoare...</p>
                  <img class="img-fluid d-block mx-auto" src="img/gene1.jpg" alt="">
                  <p style="text-align: justify; text-justify: inter-word;">Fie că se aplică exclusiv sau se adaugă oricărui tip de machiaj profesional, genele false aduc un efect de alungire și volum al genelor naturale, conturând forma ochilor și oferind privirii un plus de profunzime și intensitate. Aplicate în mod corect, au un efect natural, iar rezulatul este unul personalizat, cu un aspect foarte apropiat de trăsăturile feței.<br><p>
                  <p>În funcție de preferințele tale, poți alege din următoarele opțiuni:</p>
                  <ul class="list-inline">
                    <li>Gene de tip smocuri</li>
                    <li>Gene de tip bandă</li>
                    <li>Extensii de gene fir cu fir</li>
                  </ul>
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
                  <h2 class="text-uppercase">Machiaj de zi</h2>
                  <p class="item-intro text-muted">Adaugă sclipire unui zile obișnuite...</p>
                  <img class="img-fluid d-block mx-auto" src="img/zi1.jpg" alt="">
                  <p style="text-align: justify; text-justify: inter-word;">Machiajul de zi denotă finețe și naturalețe și diferă de cel de seară în principal prin complexitatea ochilor. Nu trebuie să atragă atenția, ci are menirea de a înfrumuseţa prin mijloace subtile fizionomia purtătoarei, în încercarea de a îmbunătăţi condiţia tenului, de a obţine simetria feţei şi de a reliefa cele mai frumoase trăsături ale chipului. Chintesenţa machiajului natural de zi constă tocmai în matifierea tenului şi păstrarea acestuia ca atare pe tot parcursul zilei.</p>
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
                  <h2 class="text-uppercase">Machiaj de ocazie</h2>
                  <p class="item-intro text-muted">Fii în centrul atenției...</p>
                  <img class="img-fluid d-block mx-auto" src="img/ocazie1.jpg" alt="">
                  <p style="text-align: justify; text-justify: inter-word;">Spre deosebire de cel de zi, machiajul de ocazie, pretențios și sofisticat, îți dă ocazia să fii mai îndrăzneață. Experimentează numeroasele tehnici și texturi care asigură rezistența pe tot parcursul serii și, în funcție de natura eventimentului, optează pentru un look dramatic sau alege unul mai subtil, dar de efect, în funcție de trăsăturile pe care dorești să le evidențiezi. Pentru un plus de grandoare, poate fi completat de gene false.</p>
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
                  <h2 class="text-uppercase">Machiaj editorial</h2>
                  <p class="item-intro text-muted">Simte-te ca o vedetă pe scenă...</p>
                  <img class="img-fluid d-block mx-auto" src="img/editorial1.jpg" alt="">
                  <p style="text-align: justify; text-justify: inter-word;">O creație vestimentară spectaculoasă sau o ședință foto nu poate fi pusă în valoare decât alături de un machiaj pe măsură, iar îmbinarea celor două poate scoate “regina” din orice femeie. Pentru ca un machiaj să apară în fotografii și filmări la fel de impresionant ca în realitate, se folosesc produse speciale care sporesc rezistența și intensitatea, acordându-se o atenție deosebită corectării celor mai mici imperfecțiuni. </p>
                  <p>Machiajul editorial este perfect pentru următoarele ocazii:</p>
                  <ul class="list-inline">
                    <li>Ședințe foto</li>
                    <li>Prezentări de modă</li>
                    <li>Editorial de beauty pentru reviste</li>
                  </ul>
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
                  <h2 class="text-uppercase">Machiaj de mireasă</h2>
                  <p class="item-intro text-muted">Pentru cea mai specială zi din viața ta...</p>
                  <img class="img-fluid d-block mx-auto" src="img/mireasa1.jpg" alt="">
                  <p style="text-align: justify; text-justify: inter-word;">Ziua nunții este evenimentul mult visat și așteptat de orice femeie încă din copilărie. Machiajul de mireasă este, în viziunea noastră, cel mai complex dintre toate tipurile. Acesta trebuie să îți avantajeze fizionomia, să îți reprezinte stilul și personalitatea, să fie în armonie deplină cu rochia, coafura și accesoriile și, cel mai important, să te simți confortabil cu el. În realizarea lui se folosesc cele mai atent selecționate produse, punându-se accent pe calitate și rezistență pentru ca tu să strălucești pe tot parcursul petrecerii.
                  </p>
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
                  <h2 class="text-uppercase">Machiaj cu efecte speciale</h2>
                  <p class="item-intro text-muted">Lasă-ți imaginația să prindă aripi... </p>
                  <img class="img-fluid d-block mx-auto" src="img/efecte1.jpeg" alt="">
                  <p style="text-align: justify; text-justify: inter-word;">Dacă participi la un bal mascat, la un festival sau la o petrecere de Halloween, artista noastră își va pune în valoare imaginația și te va transforma într-un personaj de basm, cu ajutorul unui machiaj creativ realizat cu produse destinate efectelor speciale.</p>
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