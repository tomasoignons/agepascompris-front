<script>
    let isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
</script>

{#if isChrome}
<div class="warning">
    Si vous êtes sur chrome, les pdf ne s'affichent pas correctement, utilisez un autre navigateur.
</div>
{/if}

<style>   
    .warning{
        background-color: rgba(200, 0, 0, 1);
        color: white;
        padding: 10px;
        text-align: center;
        margin-top : 20px;
        border-radius: 100px;
    }
</style>