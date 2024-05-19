<script>
    import { onMount } from 'svelte';
    import { page } from '$app/stores';
    let path = "";
    let pdfExists = false;

    onMount(async () => {
        path = `/pdf/${$page.params.year}/${$page.params.subject}/${$page.params.name}.pdf`;

        // Check if the PDF file exists
        const response = await fetch(path);
        if (response.ok) {
            pdfExists = true;
        }
    });
</script>

{#if pdfExists}
    <object id="pdf-object" data={path} type="application/pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href={path}>Download PDF</a>.</p>
    </object>
{:else}
    <p>No PDF for the course.</p>
{/if}

<style>
    #pdf-object {
        width: 100%;
        height: 93vh;
    }
</style>