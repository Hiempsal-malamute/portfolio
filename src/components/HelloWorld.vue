<template>
  <div class="hello">
    <h1>Hassen Chougar</h1>
    <span>Cartographe - géomaticien</span>
    <p>
      Géographe et cartographe de formation, j'exerce en tant que professionnel depuis l'obtention de mon Master 2 (Carthagéo) en octobre 2019.
    </p>
    <h3>Si vous êtes curieux ...</h3>
    <ul>
      <li><a href="hassen.chougar@ensg.eu"><i class="icon lar la-envelope"></i> Email</a></li>
      <li><a href="https://www.linkedin.com/in/hassen-chougar-53a0aab5/" target="_blank" rel="noopener"><i class="icon lab la-linkedin-in"></i> LinkedIn</a></li>
      <li><a href="https://github.com/Hiempsal-malamute/" target="_blank" rel="noopener"><i class="icon lab la-github"></i> GitHub</a></li>
    </ul>
    <div class="footer">
      <i>Ce site web a été intégralement réalisé en HTML/CSS/Javascript et à l'aide du framework Vue.js 3</i>
      <br>
      <i>Le contenu de ce site est soumis au droit d'auteur ; toute reproduction ou copie est interdite sans l'accord de l'auteur et de l'organisme propriétaire de l'image.</i>
    </div>
  </div>
</template>

<script>
import 'line-awesome/dist/line-awesome/css/line-awesome.min.css'

export default {
  name: 'HelloWorld',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    .hello {
      display: flex;
      flex-direction: column;
    }

    h3 {
      margin: 40px 0 0;
    }

    span {
      margin-top:-20px;
      margin-bottom: 20px;
      font-style: italic;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    li {
      display: inline-block;
      margin: 0 10px;
    }

    a {
      color: #42b983;
    }

    .footer {
      font-size: .8em;
      display: block;
      margin-top: 30px;
    }

    .icon {
      font-size: 25px;
    }

</style>
