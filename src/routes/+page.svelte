<script>
  import { FontAwesomeIcon } from "@fortawesome/svelte-fontawesome";
  import { faSearch } from "@fortawesome/free-solid-svg-icons";

  let images = ["image_1.jpg", "image_2.jpg", "image_3.jpg", "image_4.jpg"];
  let index = 0;
  let nextIndex = 1;

  setInterval(() => {
    index = (index + 1) % images.length;
    nextIndex = (index + 1) % images.length;
  }, 5000);

  let searchQuery = '';

function handleSearch(event) {
    if (event.type === 'keyup' && event.key !== 'Enter') {
        return;
    }

    location.href = `/search?search=${encodeURIComponent(searchQuery)}`;
}
</script>

<header>
  <div class="image-container">
    <!-- svelte-ignore a11y-img-redundant-alt -->
    <img src="images/{images[nextIndex]}" alt="Next image" />
    {#each [images[index]] as image (image)}
    <!-- svelte-ignore a11y-img-redundant-alt -->
    <img src="images/{image}" alt="Current image" class="fade-out" />
    {/each}
    <div class="text-container">
      <h1 class="title-header">Bienvenue sur <span>agepascompris</span></h1>
      <p>Vous cherchez quelque chose ?</p>
      <div class="input-container">
        <input type="text" id="search" placeholder="Rechercher un cours" bind:value={searchQuery} on:keyup={handleSearch}/>
        <div class="search-icon">
          <FontAwesomeIcon icon={faSearch} on:click={handleSearch} />
        </div>
      </div>
    </div>
  </div>
</header>
<section>
  <article>
    <div class="explication-container">
      <h2 class="logo-explication">agepascompris</h2>
      <p class="text-explication">
        Etudiant à l'EPFL, je fais des résumés des cours particuliers que je donne,
        et je les poste sur ce site, pour aider ceux qui en ont besoin.
      </p>
    </div>
  </article>
  <article class="question">

    <h2>Qui suis-je ?</h2>
    <div class="presentation-container">
      <img class="moi" src="images/ma photo.jpg" alt="Moi" />
      <div class="text-presentation-container">
        <p>Prénom : Emmanuel</p>
        <p>Etudes Actuelles : EPFL, Bachelor d'informatique</p>
        <p>Etudes passées : Baccalauréat en France</p>
        <p>Note à tous mes examens de Math : 20/20 (6)</p>
        <p>Note à tous mes examens de Physique : 19/20 (5.75)</p>
      </div>
    </div>
    <div class="biographie-longue">
      <h3>Biographie longue et chiante :</h3>
      <p class="biographie-longue">
        Après avoir passé plusieurs années dans le système français, j'ai passé avec
        succès le baccalauréat, où j'ai obtenu 20 en mathématique et 19 en
        physique-chimie (ne me posez plus de questions de chimie organique s'il vous
        plaît). J'ai ensuite poursuivi en faisant une des études d'informatique en
        Suisse, à l'EPFL. Concrètement, j'ai toujours aimé les maths et les matières
        scientifiques (sauf la chimie), et j'ai toujours aimé aider les autres à
        comprendre. J'ai donc décidé de donner des cours particuliers, et de les
        résumer ici. J'ai eu le déclic quand j'ai réexpliqué le cours d'AICC II à
        une amie, et je me suis rendu compte pendant que je lui réexpliquais que je
        pourrais le faire pour d'autres personnes que des amis, mais aussi que
        j'aimais profondément voir cette étincelle dans les yeux de la personne a
        qui on réexplique le cours. C'est une victoire en soit, et rien n'est plus
        gratifiant.
      </p>
    </div>
    </article>  
  
  <article class="lien-cours">
    <h2>Le lien des cours</h2>
    <p>à implémenter</p>
  </article>

  <article class="question">
    <div class="container-question">
      
      <h2>Les cours</h2>
      <p>
        Les cours disponibles sont disponibles petit à petit, à mesure que des
        clients me contactent pour en faire un. Concrètement, je ne vais pas
        m'infliger 4h de rédaction sur l'exponentielle si je n'ai pas eu un élève
        qui m'a demandé de lui expliquer. De 1 car c'est très compliqué de voir
        comment expliquer lorsqu'on a pas d'élèves en face de soit, et de 2 parce
        que j'ai une giga flemme. N'oublions pas que j'ai des études à côté. Plus
        concrètement, les cours ont donc été donnée à des élèves en particulier,
        donc ils ne sont pas fais pour le cas général. Peut-être qu'en les lisant,
        vous auriez eu besoin de plus d'explications, de moins d'explications, ne
        vous inquiétez pas c'est normal, ils sont calibrés pour chaque élève que
        j'ai, et pas pour les étudiants. En revanche, les points qu'ils traitent
        sont intéressants, puisque générallement j'aborde souvent la question des
        exercises types qu'on peut faire avec ce genre de chapitre. Par exemple pour
        les fonctions, certaines questions reviennent quasiment à chaque examen, et
        il est primordial d'avoir la méthode de résolution.
      </p>
    </div>
    
    <div class="container-question">

      <h2>Les exercices</h2>
      <p>
        Avec chaque cours, j'essaye de faire, au mieux, une petite série d'exercices
        permettant de s'entrainer sur les points spécifiques abordés dans le pdf.
        Cependant, je pose un disclaimer ici : ces exercices sont calibrés (au
        mieux) pour l'élève à qui je suis en train de donner le cours. Concrètement,
        cela veut dire qu'ils n'ont absolument pas tous la même difficulté, ni la
        même rigueur. Généralement, ils sont quand même largement faisables, surtout
        avec le cours au-dessus.
      </p>
    </div>
    </article>
  </section>
  
  <style>
    
    header{
    width: 100%;
    height: 70vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background-color: var(--color-1);
    color: white;
  }
  .image-container {
    position: relative;
    width: 100%;
    height: 70vh;
  }

  .text-container {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    flex-direction: column;
    color: white;
    position: absolute;
  }
  h1 span {
    font-family: "isocpeur", fallback;
    font-weight: bold;
    color: var(--color-2);
  }
  h1 {
    font-size: 4em;
    color: white;
    font-weight: 100;
    text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
    margin: 0;
  }

  .text-container p {
    font-size: 2em;
    color: white;
    font-weight: 100;
    text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
    margin: 0;
  }
  .input-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 40%;
    height: 4vh;
    border-radius: 100px;
    background-color: rgba(255, 255, 255, 0.9);
    border: none;
    overflow: hidden;
    font-size: 1em;
    margin-top: 20px;
  }
  .input-container input {
    border: none;
    width: 92%;
    height: 100%;
    padding: 10px;
    box-sizing: border-box;
    font-size: 0.9em;
    outline: none;
  }

  .input-container .search-icon {
    width: 8%;
    height: 100%;
    padding: 10px;
    box-sizing: border-box;
    background-color: var(--color-2);
    display: flex;
    justify-content: center;
    align-items: center;
  }

  header img {
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .fade-out {
    animation: fadeOut 1s linear forwards;
  }

  @keyframes fadeOut {
    from {
      opacity: 1;
    }
    to {
      opacity: 0;
    }
  }

  section {
    margin : auto;
    font-size: 1.2em;
    line-height: 1.5em;
    width : 100%;
  }

  article {
    width : 100%;
  }
  
  .explication-container{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 100vh;
    background-color: white;
  }
  .logo-explication {
    font-size: 5em;
    font-family: "isocpeur", fallback;
    font-weight: bold;
    color: var(--color-1);
  }

  .text-explication {
    font-size: 1.5em;
    font-weight: 100;
    text-align: center;
    max-width: 1000px;
  }

  .moi {
    height: 100%;
    aspect-ratio: 1/1;
    border-radius: 50%;
    object-fit: cover;
    object-position: center 0px;
  }
  .presentation-container{
    display: flex;
    align-items: center;
    justify-content: center;
    gap : 20px;
    height: 200px;
    padding : 10px;
    box-sizing: border-box;
    background-color: rgba(255, 255, 255, 0.3);
    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
    border-radius: 20px;
    width : fit-content;
  }


  .presentation-container p{
    margin : 0;
  }

  .biographie-longue{
    padding : 20px;
    box-sizing: border-box;
    background-color: rgba(255, 255, 255, 0.3);
    border-radius: 20px;
    margin-top: 20px;
    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
    margin-bottom : 20px;
  }

  .biographie-longue h3{
    margin-top : 0;
    margin-bottom : 10px;
  }

  .biographie-longue p{
    margin : 0;
    padding:  0;
    box-shadow: none;
  }
  
  .question {
    max-width: 1000px;
    margin : auto;
  }

  .question h2{
    font-size: 2em;
    font-weight: bold;
    color: var(--secondary-color);
  }

  .lien-cours{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 50vh;
    background-color: white;
  }

  .container-question{
    padding : 20px;
    box-sizing: border-box;
    background-color: rgba(255, 255, 255, 0.3);
    border-radius: 20px;
    margin-top: 20px;
    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
    margin-bottom : 20px;
  }

  .container-question h2{
    margin-top : 0;
    margin-bottom : 10px;
  }

  @media screen and (max-width: 800px) {
    .input-container {
      width: 80%;
    }
    .text-container {
      font-size: 0.8em;
    }

    .logo-explication{
      font-size: 3em;
    }

    .text-explication{
      font-size: 1em;
    }
    .presentation-container{
      flex-direction: column;
      gap : 10px;
      height: fit-content;
    }
    .presentation-container img{
      width: 100%;
      height: 100%;
    }
  }

</style>
