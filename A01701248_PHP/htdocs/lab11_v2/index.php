<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="description" content="frontend lab11">
  <meta name="keywords" content="HTML, CSS3, JS, PHP">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>"Lab_11"</title>
  <link rel="stylesheet" href="style.css">
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
              Uso de Formulario
            </h1>
              <h2>
                  Formulario de contacto
              </h2>
          </hgroup>
        </header>
        <?php include "./validador.php" ?>
        <div class="container">
          <form novalidate id="contact" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
            <h3>Manejo de formularios</h3>
            <h4>Ejemplo de formulario de contacto</h4>
            <fieldset>
              <input placeholder="Escribe tu nombre" type="text" tabindex="1" name="name" value="<?= $name?>" autofocus>
              <span class="error"><?= $nameErr ?>  </span>
            </fieldset>
            <fieldset>
              <input placeholder="Your Email Address" type="email" tabindex="2" name="email" value= "<?= $email?>">
              <span class="error"><?= $emailErr ?>  </span>
            </fieldset>
            <fieldset>
              <input placeholder="Your Phone Number" type="tel" tabindex="3" name="tel">
            </fieldset>
            <fieldset>
              <input placeholder="Tu pagina web empieza con with http://" type="url" tabindex="4" name="website">
              <span class="error"><?= $websiteErr ?>  </span>
            </fieldset>
            <fieldset>
              <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
            </fieldset>
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