<script lang="ts">
	import type { ComponentProps, Snippet } from 'svelte';
	import Card from '../../card/Card.svelte';

	type Props = Omit<ComponentProps<typeof Card>, 'decoration'> & {
		releaseType: string;
		releaseDate: Snippet;
	};

	let { releaseType, releaseDate, ...props }: Props = $props();
</script>

<Card {...props}>
	{#snippet decoration()}
		<div class="metadata">
			{releaseType}
			<br />
			{@render releaseDate()}
		</div>
	{/snippet}
</Card>

<style lang="scss">
	@use '$lib/style/mixins' as *;

	.metadata {
		@include on-confined {
			display: none;
		}
	}
</style>
