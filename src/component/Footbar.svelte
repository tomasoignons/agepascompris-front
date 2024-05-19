<script>


    function openInstagram(){
        window.open('https://www.instagram.com', '_blank');
    }

    function openTwitter(){
        window.open('https://www.twitter.com', '_blank');
    }

    function openGithub(){
        window.open('https://github.com/tomasoignons/', '_blank');
    }

    function openLinkedin(){
        window.open('https://www.linkedin.com/in/emmanuel-omont-37ba272a7/', '_blank');
    }

    function openApprentus() {
        window.open('https://www.apprentus.ch/cours-particuliers/en-ligne/soutien-scolaire/maths/mathematique-physique-secondaire-gymnase', '_blank');
    }
    
    function openEmail() {
        const email = 'emmanuel.b.omont@gmail.com';
        const subject = '';
        const body = '';
        window.open(`https://mail.google.com/mail/?view=cm&fs=1&to=${email}&su=${subject}&body=${body}`, '_blank');
    }
    
    function openTelephone() {
        alert("Vous pensiez vraiment que j'allais vous donner mon numéro de téléphone ?");
        window.open('https://www.youtube.com/watch?v=dQw4w9WgXcQ', '_blank');
     }

     function openGurk(){
        window.open('https://gurk.app', '_blank');
    }
    function openSallesLibres(){
        window.open('https://salleslibres.netlify.app/', '_blank');
    }
</script>

<footer class="footer">
    <div class='big-footer-container' 
    style="background-color: var(--secondary-color); color: white;"
    >

    <div class='footer-container'>

        <div class='footer-column'>
            <a href="/" class='footer-title'>PRENDRE RDV</a>
            <button class='footer-element' on:click={()=>openApprentus()}>Apprentus</button>
        </div>

        <div class='footer-column'>

            <div class='footer-title'>CONTACT</div>
            <button class='footer-element' on:click={()=>openEmail()}>Mail</button>
            <button class='footer-element' on:click={()=>openTelephone()}>Téléphone</button>
        </div>           
<!--         
        <div class='footer-column'>
            <div class='footer-title'>SUPPORT</div>
            <a href="/contact?t=help">Help Center</a>
            <a href="/profile">Account</a>
            <a href="/pricing">Gift</a>
        </div>            -->

                
        <div class='footer-column'>
            <div class='footer-title'>AUTRE PROJETS</div>
            <button class='footer-element' on:click={()=>openGurk()}>Gurk</button>
            <button class='footer-element' on:click={()=>openSallesLibres()}>Salles Libres</button>
        </div>           
        
        <div class='footer-column'>
            <div class='footer-title'>VOIR MON TRAVAIL</div>
            <button class='footer-element' on:click={()=>openGithub()}>Github</button>
            <button class='footer-element' on:click={()=>openLinkedin()}>Linkedin</button>
        </div>    
    </div>

    <div class='logo-conditions-container'>
        <a href="/"><div class='logo-container'>
            <div class="logo">agepascompris</div>
        </div></a>
        <!-- <div class='trucs-chiant-pas-interessant'>
            <a href="/privacy" class='privacy-container'>Privacy</a>
            <a href="/terms" class='privacy-container'>Terms</a>
            <a href="/legal" class='privacy-container'>Legal</a>
        </div> -->
    </div>


    <div class='svg-footer-container'>
    <svg viewBox='0 0 4400 1334' xmlns="http://www.w3.org/2000/svg" preserveAspectRatio='none'>
        <defs>
            <clipPath id="clip0"><rect x="0" y="1146" width="4400" height="1334"/></clipPath>
        </defs>
        <g clip-path="url(#clip0)" transform="matrix(1 0 0 1 0 -1146)">
            <path d="M0 1343.12 880 1150.58 1760 1146 2640 1320.2 3520 1278.94 4400 1214.76 4400 2480 3520 2480 2640 2480 1760 2480 880 2480 0 2480Z" fill="#0D0D0D" fill-rule="evenodd" fill-opacity="0.2"/>
            <path d="M0 1393.22 880 1594.99 1760 1361.13 2640 1310.68 3520 1274 4400 1365.71 4400 2480 3520 2480 2640 2480 1760 2480 880 2480 0 2480Z" fill="#0D0D0D" fill-rule="evenodd" fill-opacity="0.2"/>
            <path d="M0 1526 880 1645.25 1760 1686.53 2640 1782.85 3520 1567.28 4400 1659.01 4400 2480 3520 2480 2640 2480 1760 2480 880 2480 0 2480Z" fill="#0D0D0D" fill-rule="evenodd" fill-opacity="0.2"/>
            <path d="M0 2035.31 880 1774 1760 2062.82 2640 1971.13 3520 2104.08 4400 2076.57 4400 2480 3520 2480 2640 2480 1760 2480 880 2480 0 2480Z" fill="#0D0D0D" fill-rule="evenodd" fill-opacity="0.2"/>
            <path d="M0 2214.05 880 2195.71 1760 2177.37 2640 2232.39 3520 2269.07 4400 2104 4400 2480 3520 2480 2640 2480 1760 2480 880 2480 0 2480Z" fill="#0D0D0D" fill-rule="evenodd" fill-opacity="0.2"/>
        </g>
    </svg>
    </div>
    </div>
</footer>


<style>
    footer {
        background-color: var(--background-color);
        color: var(--text-color);
        padding: 1rem;
        text-align: center;
        width : 100%;
        padding : 0;
    }

    .big-footer-container{
    padding : 30px 0px;
    height: 400px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    position : relative;
    overflow: hidden;
    width : 100%;
    background-color: var(--background-color);
    color : white;

    @media (max-width: 768px){
        height: auto;
    }
}

.footer-container{
    width : 100%;
    display: flex;
    justify-content: space-around;
    box-sizing: border-box;
    
    @media (max-width: 768px){
        flex-wrap: wrap;
        gap : 50px 0px;
        justify-content: center;
    }
}


.footer-title{
    opacity: 1;
}

    a {
        text-decoration: none;
        font-size: 1em;
        color: white;
        opacity: 0.7;
        cursor: pointer;
    }


.footer-column{
    display: flex;
    flex-direction: column;
    gap : 10px;

    @media (max-width: 768px){
        width : 50%;
        align-items: center;
        text-align: center;
    }
}

.footer-title{
    font-size: 1em;
    font-weight: bolder;
    opacity: 1;
    color: white;
}

.footer-element{
    opacity : 0.7;
    font-size: 1em;
    cursor: pointer;
}

button, .footer-element{
    background-color: var(--background-color);
    color: white;
    border: none;
    padding: 0;
    margin : 0;
    cursor: pointer;
    transition : all 0.5s;
}
.logo-conditions-container{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap : 30px;
    z-index: 2;
}

.logo-container{
    width: 70px;
    aspect-ratio: 1/1;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    border-radius: 100px;
}

.logo-element{
    width : 100%;
    height: 100%;
    object-fit: cover;
}
.privacy-container{
    font-size: 0.7em;
    opacity: 0.6;
    align-items: center;
    justify-content: center;
    color: white;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
}

.svg-footer-container{
    position : absolute;
    bottom: 0;
    left : 0;
    width : 100vw;
    height: 50%;
    z-index: 1;
}

.svg-footer-container svg{
    width: 100%;
    height: 100%;
}

.trucs-chiant-pas-interessant{
    display: flex;
    gap : 10px;
}

.logo{
    font-size: 1.5em;
    font-family: 'isocpeur', fallback;
    color: white;
    font-weight: bold;
}
</style>