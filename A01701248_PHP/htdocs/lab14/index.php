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
                <h1>Tabla Mostrar Todo</h1>
                <p>Aqui se mostraran los resultados de la consulta"</p>
                <?php

                include './functions_php.php';
                //$result = selectAll();
                //var_dump($result);



                //$result = selectAll();
                //$table = new Tabletizer;
                //echo $table->fromArray($result);

                mostrarConFormato();

                ?>




            </div>
            <?php include'./_sideNavAds.html'; ?>
        </div>
        <div class="row content">
            <div class="col-sm-2 sidenav">
                //para mantener el espacio de la izq
            </div>
            <div class="col-sm-8 text-left">
                <form action="search.php" method="post">
                    <div class="form-group">
                        <label for="nombre">Nombre a buscar</label>
                        <input type="text" class="form-control" id="nombre" name="search">
                    </div>
                    <button type="submit" class="btn btn-default">Buscar</button>
                </form>


            </div>
            <div class="col-sm-2 sidenav">
                //mantener espacio de la derecha
             
            </div>

        </div>


    </div>


    <?php include'./_footer.html'; ?>
</body>
</html>