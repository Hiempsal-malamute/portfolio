<template>
    <div class="vignette" @mouseover="hover=true" @mouseleave="hover=false">
        <div class="vignette-title" v-if="hover" @click="clicked=true">
            <span>{{ img.nom }}</span>
        </div>
        <img :src="require(`@/assets/thumbnail/thumb_${img.fichier}`)" class="thumbnail">
    </div>
    <div class="fullscreen" v-if="clicked" @click.self="clicked=false">
        <img :src="require(`@/assets/img/${img.fichier}`)" @click="clicked=true" 
              class="image-fullscreen" >
        <div class="metadata" @click.self="clicked=false">
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
        flex-grow: 1;
        max-width:300px;
        transition:all 0.15s ease;;
        cursor:pointer;
        background:rgb(229, 229, 229);
        align-items: center;
        border-radius: 10px;
        margin: 20px;
        box-shadow: 0px 0px 15px -7px rgba(0,0,0,0.3);
    }

    .vignette:hover {
        transform: scale(1.025);
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
        background: rgb(2,0,36);
        background: linear-gradient(166deg, rgba(2,0,36,0.30688185918898814) 0%, rgba(0,0,0,0.6710275174522935) 100%);
    }

    .thumbnail {
        /* width: 330px; */
        width: 100%;
        height:200px;
        object-fit: cover;
        border-radius: 10px;
    }

    .fullscreen {
        position: fixed;
        display: flex;
        top:0;
        right:0;
        bottom:0;
        left: 0;
        z-index: 100;
        justify-content: center;
        flex-grow: 1;
        background: rgba(0,0,0,.8);

    }

    .image-fullscreen {
        align-self:center;
        object-fit: contain;
        max-width:60vw;
        height: 90vh;
        justify-items: center;
    }

    .metadata {
        top:0;
        right:0;
        bottom:0;
        left:0;
        max-width: 400px;
        text-align: left;
        margin-left: 100px;
        color: white;
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