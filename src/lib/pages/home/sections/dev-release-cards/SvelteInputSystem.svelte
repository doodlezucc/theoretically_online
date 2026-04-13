<script lang="ts">
	import Svelte from './badges/Svelte.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="svelte-input-system">
	A simple <b>key-binding</b> input system for interactive web apps, built on Svelte 5 runes.

	{#snippet action()}
		<a href="https://www.npmjs.com/package/svelte-input-system" class="button">
			npm <i class="fas fa-arrow-up-right-from-square"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<Svelte />
	{/snippet}
</DevReleaseCard>
