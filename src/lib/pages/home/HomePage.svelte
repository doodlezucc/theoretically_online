<script lang="ts">
	import DevReleasesSection from './sections/DevReleasesSection.svelte';
	import DungeonClubSection from './sections/DungeonClubSection.svelte';
	import GreetingSection from './sections/GreetingSection.svelte';
	import ReleasesSection from './sections/ReleasesSection.svelte';
</script>

<div class="content">
	<GreetingSection />

	<DungeonClubSection />

	<ReleasesSection />

	<DevReleasesSection />
</div>

<style lang="scss">
	.content {
		overflow: hidden;
	}
</style>
