<script>
    import { goto } from '$app/navigation';
</script>
  
  <nav>
    <button on:click={() => goto('/')}>Home</button>
    <button on:click={() => goto('/courses')}>Courses</button>
    <a href="https://www.apprentus.com" target="_blank" rel="noopener noreferrer">Apprentus Profile</a>
  </nav>
  
  <style>
    nav {
      display: flex;
      align-items: center;
      gap: 10px;
      padding: 5px;
      background-color: var(--color-1);
      box-sizing: border-box;
      border-radius: 0px 0px 10px 10px;  
      width : 100%;  
      position : fixed;  
      top : 0;
      height: 7vh;
      overflow: hidden;
    }
  
    button {
      cursor: pointer;
      background-color: transparent;
      border : none;
      /* box-shadow: 1px 1px 10px var(--color-3); */
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
  </style>