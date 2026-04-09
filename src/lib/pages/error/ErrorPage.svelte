<script lang="ts">
	import type { Snippet } from 'svelte';

	interface Props {
		title: string;
		children: Snippet;
	}

	let { title, children }: Props = $props();
</script>

<h1>{title}</h1>

{@render children()}

<style lang="scss">
	h1 {
		margin-top: 4em;
		margin-bottom: 0.5em;
	}
</style>
