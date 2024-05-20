<script>
    import { goto } from '$app/navigation';
</script>
  
  <nav>
    <button on:click={() => goto("/")} class="logo">agepascompris</button>
    <button on:click={() => goto('/cours')}>Cours</button>
    <a href="https://www.apprentus.ch/cours-particuliers/en-ligne/soutien-scolaire/maths/mathematique-physique-secondaire-gymnase" target="_blank" rel="noopener noreferrer">Réserver un cours</a>
  </nav>
  
  <style>
    nav {
      display: flex;
      align-items: center;
      gap: 10px;
      padding: 5px;
      background-color: white;
      box-sizing: border-box;
      border-radius: 0px 0px 10px 10px;  
      width : 100%;  
      position : fixed;  
      top : 0;
      height: 7vh;
      overflow: hidden;
      z-index: 100;
    }
  
    button {
      cursor: pointer;
      background-color: transparent;
      border : none;
      border-radius: 100px;
      padding : 10px 20px;
      box-sizing: border-box;
      font-size: 1em;
    }
  
    a {
      color: var(--secondary-color);
      text-decoration: none;
      padding: 10px 20px;
      cursor: pointer;
      background-color: transparent;
      border-radius: 100px;
      font-size: 1em;
    }
    @font-face {
    font-family: 'isocpeur';
    src: url('/font/ISOCPEUR.ttf') format('truetype');
  }

    .logo {
      font-size: 2em;
      font-family: 'isocpeur', fallback;
      color: var(--color-1);
      font-weight: bold;
    }

    @media (max-width: 768px) {
      nav {
        justify-content: space-between;
        gap : 0px;
        padding : 0px;
      }

      .logo{
        font-size: 1.5em;
      }
    }
  </style>