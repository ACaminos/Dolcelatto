<style>
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 3;
  top: 0;
  left: 0;
  background-color: #1C1F33;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<header class="Desktop">
    <div class="Cabecera">
       <div class="container" id="primeraLineaHeader">
          <div class="row text-center">    
            <div class="col-sm-4 order-1 order-sm-1">
              <a href="./index.php"><img class="dolcelattoLogo" src="./img/iconos/dolcelatto.png" alt="" srcset=""></a> 
            </div>
            <div class="col-sm-5 order-1 order-sm-1">
                <div class="search"> <input type="text" class="search-input" placeholder="Buscá por Producto, marca, categoria..." name=""> <a href="#" class="search-icon"> <img class="LupaBuscador" src="./img/iconos/Icon feather-search.png" alt=""></a> </div>
            </div>
            <div class="col-sm-3 order-1 order-sm-1">
              <button class="btn" type="button" data-toggle="modalSesionUsuario" data-target="#staticBackdrop">
                <img class="imagenes" src="./img/iconos/Icon feather-user.png" alt="" srcset="" title="Registrarse/Iniciar sesión">
              </button>
              <button class="btn" type="button" aria-expanded="false">
                <img class="imagenes" src="./img/iconos/Icon feather-heart.png" alt="" srcset="" title="Mis favoritos">
              </button>
              <button class="btn" type="button" aria-expanded="false" data-toggle="modal" data-target="#ModalCarrito">
                <img class="imagenes" src="./img/iconos/Icon feather-shopping-cart.png" alt="" srcset="" title="Mi carrito">
              </button>
            </div>
          </div>
        </div>
       <div class="EntreLinea"></div>
       <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link active" href="#">Vinos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Cervezas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Espirituosas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Maltas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Blog</a>
        </li>
      </ul>
      </div>
</header>
                      <!------------------------ HEADER MOBILE --------------------------->
<header class="Mobile">  
<div id="mySidenav" class="sidenav">
<div class="row">
    <div class="col-10">
    <img src="./img/iconos/dolcelatto_Icono_2.png" width="70px" height="70px" alt="" style="margin-left:40%">
    </div>
    <div class="col-2">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    </div>
</div><br>
  <a href="#">Vinos</a>
  <a href="#">Cervezas</a>
  <a href="#">Espirituosas</a>
  <a href="#">Maltas</a>
</div>
<div style="background-color: #1C1F33; padding-top: 5px">
<div class="row">
    <div class="col-2">
    <span style="font-size:30px;cursor:pointer; color:white; margin-left:10px; margin-top:5px" onclick="openNav()">&#9776;</span>

    </div>
    <div class="col-7" style="margin-top: 5px; float:left;">
    <img src="./img/iconos/dolcelatto.png" width="70%" height="70%" alt="">

    </div>
    <div class="col-3" style="margin-top: 5px;">
      <a href="#"><img src="./img/iconos/Icon feather-heart.png" alt="" style="margin-right: 10px;"></a>
      <a href="#"><img src="./img/iconos/Icon feather-shopping-cart.png" alt=""></a>
    </div>
  </div>
  <div class="search"> <input type="text" class="search-input" placeholder="Buscá por Producto, marca, categoria..." name=""> <a href="#" class="search-icon"> <img class="LupaBuscador" src="./img/iconos/Icon feather-search.png" alt=""></a> </div>
</div>
</header>
          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" style="position: absolute;"> <!-- MODAL CARRITO -->
            <div class="modal" tabindex="-1" id="ModalCarrito">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h3 class="modal-title">Mi pedido</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                      <span aria-hidden="true">cerrar &times;</span>
                    </button>
                  </div>
                  <div class="modal-body"> <!-- Primer Producto de Modal -->
                  <div class="media">
                    <img src="./Img adobe XD/NoPath_Birra.png" class="align-self-center mr-3" alt="..." width="64px" height="64px">
                    <div class="media-body">
                      <h5 class="mt-0">Lorem ipsum</h5>
                      <p>Cras sit amet nibh libero, in gravida nulla.</p>
                      <p class="mb-0">Bs. 400</p>
                    </div>
                    <button class="Close" style="border: none; background-color:white ;"><span aria-hidden="true">&times;</span></button>
                  </div>
                  </div>
                  <div class="modal-body"> <!-- Segundo Producto de Modal -->
                  <div class="media">
                    <img src="./Img adobe XD/NoPath_-Vino.png" class="align-self-center mr-3" alt="..." width="64px" height="64px">
                    <div class="media-body">
                      <h5 class="mt-0">Lorem ipsum</h5>
                      <p>Cras sit amet nibh libero, in gravida nulla.</p>
                      <p class="mb-0">Bs. 400</p>
                    </div>
                    <button class="Close" style="border: none; background-color:white ;"><span aria-hidden="true">&times;</span></button>
                  </div>
                  </div>
                  <div class="modal-body">
                    <p>Subtotal</p>
                  </div>
                  <div class="modal-footer">
                  <div class="container-fluid">
                    <button type="button" class="btn btn-outline-danger btn-block"> <a href="./Carrito.php">Ver carrito</a></button><br>
                  </div>
                  <div class="container-fluid">
                    <button type="button" class="btn btn-danger btn-block">Finalizar compra</button>
                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "300px"; /* Marca el ancho de apertura del sidebar */

}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";

}
</script>