<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="description" content="frontend jurasic park">
    <meta name="keywords" content="HTML, CSS3, JS, PHP">
    <title>"Este es el titulo del documento"</title>
    <link rel="stylesheet" href="misestilos.css">
</head>

<body>
    <div id="caja_principal">
        <header id="cabecera">
            <h1>Titulo Principal de la pagina</h1>
        </header>
        <nav id="menu">
            <ul>
                <li>Inicio</li>
                <li>Imagenes</li>
            </ul>
        </nav>
        <section id="area_principal">
            <article>
                <header>
                    <hgroup>
                        <h1>
                            Sesiones
                        </h1>
                    </hgroup>
                </header>
                <div id="subir_archivos">

                    <form action="upload.php" method="post" enctype="multipart/form-data">
                        Select image to upload:
                        <input type="file" name="file" id="fileToUpload">
                        <input type="submit" value="Upload" name="submit">
                    </form>

                </div>

                <footer>
                    <p>Comentarios</p>
                </footer>
            </article>


        </section>
        <aside id="barra_lateral">
            <blockquote>Nada detendra a la naturaleza</blockquote>
            <blockquote>Lore ipsum</blockquote>
        </aside>
        <footer id="pie">
            Copyright &copy
        </footer>
    </div>
</body>

</html>