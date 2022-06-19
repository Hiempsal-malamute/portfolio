<template>
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
    <h3>Portfolio cartographique - Hassen Chougar</h3>
    <p>
      Ceci est une présentation non exhaustive de mes travaux (carto)graphiques, réalisés
      entre fin 2018 et juin 2022 dans un cadre, pour certains, professionnel, pour d'autres personnel.
    </p>
    <div class="filters">
      <ul>
        <li><b>Filtres</b></li>
        <li class="filter-item" v-for="filter in filters" :key="filter" @click="filtreMoiCa(filter)">{{filter}}</li>
      </ul>
    </div>
    <div class="grid">
      <Vignette v-for="crea in filteredData" :img="crea" :key="crea.nom"/>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Vignette from '@/components/Vignette.vue'
import creations from '@/assets/creations.json'

export default {
  name: 'Home',
  components: {
    Vignette
  },
  data() {
    return {
      data:creations,
      filter:'Tout',
      filters: ['Tout','Édition','Poster','Web','Perso']
    }
  },
  computed: {
    filteredData() {
      if(this.filter == 'Tout') {
        return this.data
      } else if(this.filter == "Perso") {
        return this.data.filter(e => e["destinataire"] == this.filter)
      } else {
        return this.data.filter(e => e["type"] == this.filter)
      }
    }
  },
  mounted() {
    console.log(this.data)
  },
  methods: {
    filtreMoiCa(e) {
      this.filter = e
    }
  },
}
</script>

<style scoped>

  .grid {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    align-content: flex-start;
  }

  ul {
    list-style: none;
  }

  li {
    font-size:15px;
    display: inline-block;
    padding:5px;
  }

  .filter-item {
    cursor:pointer;
  }

  li::after {
    content: "";
    display:block;
    margin:0 auto;
    margin-bottom: -2px;
    height: 1px;
    background-color: #42b983;
    visibility: hidden;
    z-index: 1000;
    transform: scaleX(0);
    transform-origin:left;
    transition: transform 250ms ease-in-out;
  }

  .filter-item:hover:after {
    visibility: visible;
    transform: scaleX(1);
    transform-origin:left;
  }

</style>