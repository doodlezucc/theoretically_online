<script lang="ts">
	import Svelte from './badges/Svelte.svelte';
	import TypeScript from './badges/TypeScript.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="svelte-yjs">
	Type-safe, reactive Svelte wrappers around the <a href="https://yjs.dev/">Yjs</a> client layer for
	<b>collaborative web apps</b>.

	{#snippet action()}
		<a href="https://www.npmjs.com/package/svelte-yjs" class="button">
			npm <i class="fas fa-arrow-up-right-from-square"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<Svelte />
		<TypeScript />
	{/snippet}
</DevReleaseCard>
