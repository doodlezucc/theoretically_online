<script lang="ts">
	import Svelte from './badges/Svelte.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="svelte-tether">
	A small collection of Svelte wrapper components to <b>teleport snippets</b> from one place to
	another. Useful for popovers and <b>modal elements</b>.

	{#snippet action()}
		<a href="https://doodlezucc.github.io/svelte-tether" class="button">
			Dedicated Homepage <i class="fas fa-arrow-up-right-from-square"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<Svelte />
	{/snippet}
</DevReleaseCard>
