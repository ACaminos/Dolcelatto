function openNav() {
    document.getElementById("mySidenav").style.width = "100%"; /* Marca el ancho de apertura del sidebar */
    document.getElementById("rightMenu").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}