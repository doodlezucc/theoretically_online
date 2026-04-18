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
	@use '$lib/style/mixins' as *;

	$spacing: 24px;

	ul {
		padding-inline-start: 0;
		display: flex;
		justify-content: center;
		flex-wrap: wrap;
		column-gap: $spacing;

		> :global(li) {
			width: min(30em, calc(100vw - 24px));
			margin: ($spacing * 0.5) 0;
		}
	}

	@include on-confined {
		ul {
			> :global(li) {
				min-width: min(300px, calc(100vw - 24px));
				flex: 1;
			}
		}
	}
</style>
