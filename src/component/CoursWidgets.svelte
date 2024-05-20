<script>
    import { onMount } from 'svelte';
    import { FontAwesomeIcon } from "@fortawesome/svelte-fontawesome";
    import { faSearch } from "@fortawesome/free-solid-svg-icons";
    import { goto } from '$app/navigation';


    export let displayedCourses = [];
    let currentIndex = 0;
    let courses = [];


    onMount(async () => {
        const response = await fetch('/cours.json');
        courses = await response.json();
        loadMoreCourses();
    });

    function loadMoreCourses() {
        const nextCourses = courses.slice(currentIndex, currentIndex + 20);
        displayedCourses = [...displayedCourses, ...nextCourses];
        currentIndex += 20;
    }
</script>

<div class="courses-container">

    {#each displayedCourses as course (course.year + course.subject + course.name)}
    <div class="course-container-widget" on:click={() => goto(`/cours/${course.year}/${course.matiere}/${course.mainSubject}-${course.student}-${course.week}`)}>
        <h2>{course.name}</h2>
        <p>{course.description}</p>
        <div class="tags">
            {#each course.subjects as tag}
            <span class="tag">{tag}</span>
            {/each}
        </div>
    </div>
    {/each}
</div>
{#if currentIndex < courses.length}
<div class="button-container">
    <button class="load-courses" on:click={loadMoreCourses}>Voir plus de cours</button>
</div>
{/if}
<style>

.courses-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: stretch; /* Changed from center to stretch */
        max-width: 1000px;
        gap : 20px;
        margin-top : 10px;
    }

    .course-container-widget {
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        width : 40%;
        background-color: rgba(255, 255, 255, 0.3);
        cursor: pointer;
    }
    .course-container-widget h2 {
        margin: 0;
        font-size: 1.5em;
    }

    .button-container{
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .load-courses {
        margin: 20px;
        padding: 10px 20px;
        border: none;
        border-radius: 100px;
        background-color: var(--color-1);
        color: var(--secondary-color);
        cursor: pointer;
        width :200px;
        transition : all 0.5s;
    }
    .load-courses:hover {
        background-color: var(--color-2);
        scale : 1.1;
    }
    
    .tags {
        display: flex;
        gap: 5px;
        margin-top: 10px;
        flex-wrap: wrap;
    }
    .tag{
        background-color: var(--secondary-color);
        color: white;
        padding : 5px;
        border-radius: 5px;
        text-wrap: nowrap;
    }

    @media screen and (max-width: 800px) {
        .course-container-widget {
            width: 80%;
        }
    }

</style>