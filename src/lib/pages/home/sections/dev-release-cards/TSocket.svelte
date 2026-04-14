<script lang="ts">
	import TypeScript from './badges/TypeScript.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="tsocket">
	A type-safe, versatile implementation of <b>remote procedure calls (RPC)</b> with <i>tiny</i>
	payloads, powered by shared schemata.

	{#snippet action()}
		<a href="https://github.com/doodlezucc/tsocket" class="button">
			Repository <i class="fab fa-github"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<TypeScript />
	{/snippet}
</DevReleaseCard>
