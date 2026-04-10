<script lang="ts">
	import type { Snippet } from 'svelte';

	interface Props {
		children: Snippet;
	}

	let { children }: Props = $props();
</script>

<ul>
	{@render children()}
</ul>

<style lang="scss">
	$spacing: 16px;

	ul {
		padding-inline-start: 0;
		display: flex;
		justify-content: center;
		flex-wrap: wrap;
		grid-template-columns: repeat(6, 1fr);
		column-gap: $spacing;

		> :global(li) {
			width: 30em;
			margin: ($spacing * 0.5) 0;

			@media (max-width: 1100px) {
				flex-basis: 100%;
			}
		}

		> :global(br) {
			display: block;
			flex: 1;
		}
	}
</style>
