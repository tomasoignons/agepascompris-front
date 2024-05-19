<script>
    import { onMount } from 'svelte';
    import { goto } from '$app/navigation';
  import CoursWidgets from '../../component/CoursWidgets.svelte';
  import Search from '../../component/Search.svelte';
  import WarningChrome from '../../component/WarningChrome.svelte';
    // import * as pdfjsLib from 'pdfjs-dist';


    let courses = [];
    let searchQuery = '';
    let matchedCourses = [];

    // async function deepSearch(course) {
    //     const pdfUrl = `/pdf/${course.subject}/${course.year}/${course.mainSubject}-${course.student}-${course.week}.pdf`;
    //     const pdf = await pdfjsLib.getDocument(pdfUrl).promise;
    //     const numPages = pdf.numPages;

    //     for (let i = 1; i <= numPages; i++) {
    //         const page = await pdf.getPage(i);
    //         const content = await page.getTextContent();
    //         const text = content.items.map(item => item.str).join(' ').toLowerCase();

    //         if (text.includes(searchQuery.toLowerCase())) {
    //             return true;
    //         }
    //     }

    //     return false;
    // }

    onMount(async () => {
        const response = await fetch('/cours.json');
        courses = await response.json();

        const urlParams = new URLSearchParams(window.location.search);
        searchQuery = urlParams.get('search') || '';
        const deepSearchEnabled = urlParams.get('deep_search') === 'true';
        
        // if (deepSearchEnabled) {
        //     for (const course of courses) {
        //         if (await deepSearch(course)) {
        //             matchedCourses.push(course);
        //         }
        //     }
        // } else {

            matchedCourses = courses.filter(course => {
                const title = course.name.toLowerCase();
                const query = searchQuery.toLowerCase();
                const titleLengthDifference = Math.abs(title.length - query.length);

                const tagMatch = course.subjects.some(tag => {
                    const lowerTag = tag.toLowerCase();
                    const tagLengthDifference = Math.abs(lowerTag.length - query.length);
                    return tagLengthDifference <= 2 && lowerTag.includes(query) || lowerTag.includes(query);
                });

                return titleLengthDifference <= 5 || tagMatch;
            });
        // }
    });
</script>

<section>
    <WarningChrome/>
    <Search/> 
    <CoursWidgets displayedCourses={matchedCourses} />
</section>
