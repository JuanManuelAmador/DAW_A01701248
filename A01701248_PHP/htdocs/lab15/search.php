<!doctype html>
<html lang="en" class="h-100">
<?php include'./_head.html'; ?>

<body class="d-flex flex-column h-100">
    <?php include'./_header.html'; ?>

      <!-- Begin page content -->


    <div class="container-fluid text-center">

         <div class="row content">
            <?php include'./_sideNav.html'; ?>
            <div class="col-sm-8 text-left">
                <h1>Resultados de la busqueda</h1>
                
                <?php include'./functions_php.php'; 
                
                //Muestra una tabla con formato, pero esta recibe el array de la busqueda
                //en vez del Select*
                mostrarBusquedaConFormato();
                
                
                ?>




            </div>
            <?php include'./_sideNavAds.html'; ?>
        </div>


    </div>


    <?php include'./_footer.html'; ?>
</body>
</html>
