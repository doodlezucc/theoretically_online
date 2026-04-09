<script lang="ts">
	import { asset } from '$app/paths';
	import AboutSection from './sections/AboutSection.svelte';
	import DevReleasesSection from './sections/DevReleasesSection.svelte';
	import DungeonClubSection from './sections/DungeonClubSection.svelte';
	import GreetingSection from './sections/GreetingSection.svelte';
	import ReleasesSection from './sections/ReleasesSection.svelte';
</script>

<div
	class="content"
	style:--tex-paper={'url("' + asset('/images/paper-with-fibers.jpg') + '")'}
	style:--tex-paper-blue={'url("' + asset('/images/paper-blue.jpg') + '")'}
>
	<GreetingSection />

	<DungeonClubSection />

	<ReleasesSection />

	<DevReleasesSection />

	<AboutSection />
</div>
