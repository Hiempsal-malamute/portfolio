<template>
  <div class="hello">
    <h1>Hassen Chougar</h1>
    <span>Cartographe-géomaticien</span>
    <p>
      Un site web minimaliste dont l'ambition est d'exposer un modeste portfolio cartographique.
    </p>
    <h3>Contact</h3>
    <ul>
      <li><a href="mailto:https://chat.vuejs.org">Email</a></li>
      <li><a href="https://www.linkedin.com/in/hassen-chougar-53a0aab5/" target="_blank" rel="noopener">Linkedin</a></li>
      <li><a href="https://github.com/Hiempsal-malamute/" target="_blank" rel="noopener">Github</a></li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
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
</style>
