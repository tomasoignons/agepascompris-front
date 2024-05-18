<script>
    import Footbar from '../component/Footbar.svelte';
import Navbar from '../component/Navbar.svelte';
  </script>
  
  <Navbar />
  <main class="main-component">
    <slot></slot>
  </main>
  <Footbar/>

  <style>
    .main-component {
      display: flex;
      flex-direction: column;
      align-items: center;
      min-height: 100vh;
      margin:0 auto;
      padding-top: 7vh;
      box-sizing: border-box;
      margin-bottom : 0px;
      font-family: "Helvetica Neue", sans-serif;
      color: #333;
      max-width: 768px;
    }

  </style>