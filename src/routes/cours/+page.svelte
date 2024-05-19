<script>
    import { onMount } from 'svelte';
  import CourseWidgets from '../../component/CoursWidgets.svelte';
  import Search from '../../component/Search.svelte';
  import WarningChrome from '../../component/WarningChrome.svelte';

    let currentIndex = 0;
    let courses = [];

    onMount(async () => {
        const response = await fetch('/cours.json');
        courses = await response.json();
    });
</script>

<section>
    <WarningChrome/>
    <Search/>
    <CourseWidgets {courses} />
</section>
