<script lang="ts">
	import type { Snippet } from 'svelte';

	interface Props {
		title: string;
		children: Snippet;
	}

	let { title, children }: Props = $props();
</script>

<main>
	<h1>{title}</h1>

	{@render children()}
</main>

<style lang="scss">
	main {
		padding: 0 2em;
		border-bottom: 1px solid #fff3;
	}

	h1 {
		margin-top: 4em;
		margin-bottom: 0.5em;
	}
</style>
