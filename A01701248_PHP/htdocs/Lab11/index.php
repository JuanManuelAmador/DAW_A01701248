<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name= "description" content = "frontend jurasic park">
  <meta name = "keywords" content = "HTML, CSS3, JS, PHP" >
  <title>"Este es el titulo del documento"</title>
  <link rel="stylesheet" href="misestilos.css" >
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
        <section id= "area_principal">
            <article>
                <header>
                    <hgroup>
                        <h1>
                            Uso de Formulario
                        </h1>
                    </hgroup>
                </header>
                <div>
                    <br />
                    <h3>Cuestionario de dinosaurios</h3>
                    <form method="POST" action="validador_forma.php">                   
                    <label for="Nombre">Nombre</label><br>
                    <input type="text" name= "nombre" id="nombre"/><br />
                    <label for="edad">Edad</label><br />
                    <input type="number" name="edad" id="edad"/>  <br />  
                    <p>
                    ¿En que continente se han encontrado la mayoria de los fosiles de dinos?<br />
                    </p>
                    Norteamerica<input type="radio" name="pregunta1" id="pregunta" value="1"/>
                    Africa<input type="radio" name="pregunta1" id="pregunta" value="0"/>
                    Antartida<input type="radio" name="pregunta1" id="pregunta1" value="0"/><br />
                    <p>
                    ¿Es cierto que algunos dinosuarios tenian el tamaño de gallinas?<br />
                    </p>
                    Cierto<input type="radio" name="pregunta2" id="pregunta" value="1"/>
                    Falso<input type="radio" name="pregunta2" id="pregunta" value="0"/><br />
                    <input type="submit" name="enviar" value="enviar" id="enviar"/>
                    <p>
                    
                </div>
                <figure>
                    <img src="https://rec-end.elnuevodia.com/images/tn/0/0/1920/956/900/447/2018/06/26/jurassic_5.jpg?rnd=0.14813138613114152" >
                         <figcaption>
                             Imagen de jurasic
                         </figcaption>
                </figure>
                <footer>
                    <p>Comentarios</p>
                </footer>
            </article>
            <article>
                <header>
                    <hgroup>
                        <h1>
                            Titulo de primera entrada de la pagina
                        </h1>
                    </hgroup>
                </header>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis laoreet, odio nec eleifend convallis, purus nunc convallis nisi, eget condimentum neque elit et ex. In sed cursus tellus. Integer cursus urna vel vulputate luctus. Morbi eu dignissim dui. Mauris eu ex et ligula pulvinar consectetur. Donec dignissim eleifend nisl, sit amet viverra mauris pellentesque nec. Sed tempor erat sed imperdiet imperdiet. Integer imperdiet vitae orci et posuere. Nunc et velit urna. Nullam vitae nisi auctor, suscipit dui aliquet, venenatis metus. Etiam efficitur, velit vel mollis luctus, elit dui dapibus est, non dictum augue felis fringilla sem.
                <figure>
                    <img src="https://valenciaplaza.com/public/Image/2017/7/0bd0cb747ee3984222d778b774e2889e_NoticiaAmpliada.jpg" >
                         <figcaption>
                             Imagen de jurasic
                         </figcaption>
                </figure>
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
