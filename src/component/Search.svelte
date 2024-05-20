<script>
    import { FontAwesomeIcon } from "@fortawesome/svelte-fontawesome";
    import { faSearch } from "@fortawesome/free-solid-svg-icons";
    import { goto } from '$app/navigation';

    let searchQuery = '';

    function handleSearch(event) {
        if (event.type === 'keyup' && event.key !== 'Enter') {
            return;
        }

        location.href = `/search?search=${encodeURIComponent(searchQuery)}`;
    }
</script>

<div class="search-section">
    <input type="text" id="search" placeholder="Rechercher un cours" bind:value={searchQuery} on:keyup={handleSearch} />
    <!-- svelte-ignore a11y-click-events-have-key-events -->
    <!-- svelte-ignore a11y-no-static-element-interactions -->
    <div class="search-icon" on:click={handleSearch}>
        <FontAwesomeIcon icon={faSearch} />
    </div>
</div>

<style>
    .search-section {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width : 80%;
        margin : auto;
        margin-top : 20px;
        border-radius: 100px;
        overflow: hidden;
        box-sizing: border-box;
        height: 5vh;
    }

    input {
        padding: 10px;
        padding-left : 20px;
        width: 300px;
        border : none;
        outline : none;
        width : 92%;
        height: 100%;
        box-sizing: border-box;
    }

    .search-icon {
        cursor: pointer;
        background-color: var(--color-1);
        width : 8%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        color : white;
    }

    @media (max-width: 768px) {
        input {
            width: 85%;
        }
        .search-icon {
            width: 15%;
        }
    }
</style>