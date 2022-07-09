<template>
  <div id="nav">
    <router-link to="/">Portfolio</router-link>
    <router-link to="/about">À propos</router-link>
  </div>
  <router-view id="view"/>
</template>

<style>
  @font-face {
    font-family: 'Coda-Regular';
    src: url('./assets/fonts/Coda-Regular.ttf');
  }
  
  @font-face {
    font-family: 'Coda-ExtraBold';
    src: url('./assets/fonts/Coda-ExtraBold.ttf');
  }

  #app {
    font-family: 'Coda-Regular', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
  }

  html,body {
    position: relative;
    margin:0;
  }

  #view {
    margin-left:20px; 
    margin-right:20px; 
  }

  #nav {
    display: flex;
    padding: 30px;
    padding:10px 30px 10px 30px;
    justify-content: flex-start;
    position: sticky;
    top: 0;
    z-index: 100;
    background: white;
  }

  #nav a {
    font-weight: bold;
    text-transform: uppercase;
    color: #2c3e50;
    margin: 5px 10px 2px 10px;
    text-decoration: none;
    display: inline-block;
  }

  #nav a.router-link-exact-active {
    color: #42b983;
  }

    /*Hover effect underline*/
  #nav a::after {
    content: "";
    display:block;
    margin-bottom: -2px;
    height: 2px;
    background-color: #42b983;
    z-index: 1000;
    transform: scaleX(0);
    transform-origin:bottom right;
    transition: transform 0.25s ease-out;
  }

  #nav a:hover:after {
    visibility: visible;
    transform: scaleX(1);
    transform-origin:bottom left;
  }
</style>
