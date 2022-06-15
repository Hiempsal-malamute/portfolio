<template>
  <div class="vignette" @mouseover="hover=true" @mouseleave="hover=false">
    <div class="vignette-title" v-if="hover" @click="clicked=true">
        <span>{{ img.nom }}</span>
    </div>
    <img :src="require(`@/assets/img/${img.fichier}`)" class="preview">
  </div>
    <div class="image-big" v-if="clicked" @click.self="clicked=false">
        <img :src="require(`@/assets/img/${img.fichier}`)" @click="clicked=true" class="real" >
        <div class="infos" @click.self="clicked=false">
            <h3>{{img.nom}}</h3>
            <ul>
                <li>                
                    Origine : {{ img.origine }}
                </li>
                <li>                
                    Contexte de création : {{ img.destinataire }}
                </li>
                <li>                
                    Date de publication : {{ img.date }}
                </li>
                <li>                
                    État : {{ img.etat }}
                </li>
                <li v-if="img.url_externe"><a :href="img.url_externe" target="_blank">En savoir plus</a></li>
            </ul>
        </div>
    </div>
</template>

<script>
// import data from "@/assets/creations.json"

export default {
    props:['img'],
    data() {
        return {
            data:'',
            hover:false,
            clicked:false
        }
    },
    methods: {
        
    },
}
</script>

<style scoped>
    .vignette {
        display: flex;
        position: relative;
        flex-grow: column wrap;
        width:330px;
        /* transition:0.1s; */
        cursor:pointer;
        background:rgb(229, 229, 229);
        align-items: center;
        border-radius: 20px !important;
        margin: 20px;
    }

    .vignette-title {
        display: flex;
        flex-wrap: wrap;
        align-items: flex-start;
        border-radius: 5px;
        width: 100%;
        height: 100%;
        position: absolute;
        flex-grow: column wrap;
        /* z-index: 11000; */
        color:white;
        transition: 0.15s;
        justify-content: center;
        align-items: center;
    }

    .vignette-title > span {
        margin: 10px;
    }

    .vignette-title:hover {
        background-color:rgba(0, 0, 0, 0.55);
    }

    .preview {
        width: 330px;
        height:200px;
        object-fit: cover;
    }

    .image-big {
        position: absolute;
        top:0;
        right:0;
        bottom:0;
        left: 0;
        display: flex;
        width: 100% !important;
        height: 100% !important;
        background: rgba(0,0,0,.8);
        z-index: 1000;
        vertical-align: middle;
        justify-content: center;
        flex-grow: column;
    }

    .real {
        object-fit: contain;
        max-width:1000px;
    }

    .infos {
        top:0;
        right:0;
        bottom:0;
        left:0;
        max-width: 400px;
        text-align: left;
        margin-left: 100px;
        height: 100% !important;
        color: white;
        display: flex;
        flex-direction: column;
        vertical-align: middle;
    }

    a {
        color:white;
    }

    ul,li {
        list-style: none;
        margin-bottom: 10px;
        padding-left: 0;
    }

</style>