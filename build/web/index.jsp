
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
             integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/styles.css"/>
    </head>
    <body>
        <%@include file="/views/partials/navbar.jsp" %>
        <main> 
    <section class="hero-section  d-flex align-items-center justify-content-end ">
      <div class="hero-section-contain  text-end ">
        <div class="hero-section-text ">
          <h1 class="text-light text-align-end mb-3">Conf Bs As</h1>
          <p class="text-light mb-3 "> Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
            comunidad el conocimiento y experiencia de los expertos que estan creando el futuro de Internet.
            Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer
            nivel que tenemos para ti. Te esperamos !</p>
          <button class="btn btn-outline-light fs-5 py-2 px-4">Quiero ser orador</button>
          <button class="btn btn-success fs-5 py-2 px-4"  >Comprar Tickets</button>
        </div>
      </div>
    </section>
    <section class="card-section">
      <div class="card-section-title">
        <h2> CONOCE A LOS </h2>
        <h3> ORADORES </h3>
      </div>
      <div class="card-section-contain d-flex flex-row justify-content-center align-items-top pb-5">
        <div class="card me-5" style="width: 25rem;">
          <img src="./img/steve.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <button type="button" class="btn btn-warning tag">Javascript</button>
            <button type="button" class="btn btn-info text-light tag">React</button>
            <h5 class="card-title pt-2">Steve Jobs</h5>
            <p class="card-text fw-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos, quam tempora
              doloremque at, deleniti tempore delectus et cum cumque fuga impedit alias ipsa perferendis illum. Deserunt
              est incidunt dolores corrupti!.</p>
          </div>
        </div>
        <div class="card me-5" style="width: 25rem;">
          <img src="./img/bill.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <button type="button" class="btn btn-warning tag">Javascript</button>
            <button type="button" class="btn btn-info text-light tag">React</button>
            <h5 class="card-title pt-2">Bill Gates</h5>
            <p class="card-text fw-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos, quam tempora
              doloremque at, deleniti tempore delectus et cum cumque fuga impedit alias ipsa perferendis illum. Deserunt
              est incidunt dolores corrupti!.</p>
          </div>
        </div>
        <div class="card" style="width: 25rem;">
          <img src="./img/ada.jpeg" class="card-img-top" alt="...">
          <div class="card-body">
            <button type="button" class="btn btn-secondary text-light tag">Negocios</button>
            <button type="button" class="btn btn-danger text-light tag">Startups</button>
            <h5 class="card-title pt-2">Ada Lovelace</h5>
            <p class="card-text fw-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos, quam tempora
              doloremque at, deleniti tempore delectus et cum cumque fuga impedit alias ipsa perferendis illum. Deserunt
              est incidunt dolores corrupti!.</p>
          </div>
        </div>
      </div>
    </section>
    <section class="img-container d-flex flex-row">
      <img class="img-primary" src="./img/honolulu.jpg" alt="">
      <div class="bg-dark ps-4 pt-4 pe-3 img-text">
        <h2 class="text-light">Bs As - Octubre</h2>
        <p class="text-light"> Buenas Aires es la provincia y localidad más grande del estado de Argentina, en los
          estados Unidos. Honolulu
          es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al
          área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una
          ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km2 de superficie)</p>
        <button class="btn btn-outline-light ">Conocé más</button>
      </div>
    </section>

    <section class="form-container d-flex justify-content-center pb-3 ">
      <div class="form-div d-flex flex-column justify-content-center align-items-center ">
        <h2 class="mt-5">CONVIÉRTETE EN UN</h2>
        <h3>ORADOR</h3>
        <p> Anótate como orador para dar una <span class="dot">charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
        <form>
          <div class="mb-3 d-flex flex-row">
            <input type="text" class="form-control me-5 input-form text-secondary" placeholder="Nombre">
            <input type="text" class="form-control input-form " placeholder="Apellido">
          </div>
          <div class="mb-3">
            <textarea class="form-control text-area " placeholder="Sobre qué quieres hablar?"></textarea>
            <p class="left ">Recuerda incluir un título para tu charla</p>
          </div>
          <button type="submit" class="btn btn-send pt-2 pb-2 fs-5 text-light">Enviar</button>
        </form>
      </div>
    </section>

  </main>
        <%@include file="/views/partials/footer.jsp" %>
    </body>
</html>
