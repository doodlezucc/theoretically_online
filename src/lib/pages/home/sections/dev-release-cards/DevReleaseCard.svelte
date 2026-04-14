<script lang="ts">
	import type { Snippet } from 'svelte';
	import Card from '../../card/Card.svelte';

	interface Props {
		title: string;
		action: Snippet;
		badges: Snippet;
		children: Snippet;
	}

	let { title, action, badges, children }: Props = $props();
</script>

<Card {title} {action}>
	{@render children()}

	{#snippet decoration()}
		<div class="badges">
			{@render badges()}
		</div>
	{/snippet}
</Card>

<style lang="scss">
	.badges {
		display: flex;
		align-items: center;
		gap: 4px;

		filter: contrast(1) sepia(1);
		transition: 0.25s;
	}

	:global(.card:hover) .badges {
		filter: contrast(1) sepia(0);
	}
</style>
