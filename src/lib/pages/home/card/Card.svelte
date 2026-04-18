<script lang="ts">
	import type { Snippet } from 'svelte';

	interface Props {
		title: string;
		logo?: {
			url: string;
			scale?: number;
		};
		color?: string;
		action: Snippet;
		decoration: Snippet;
		children: Snippet;
	}

	let { title, logo, color, action, decoration, children }: Props = $props();
</script>

<li class="card" style:--color={color}>
	<div>
		{#if logo}
			<img width="40" height="40" src={logo.url} alt="'{title}' Logo" style:--scale={logo.scale} />
		{/if}
		<div class="content">
			<h3>{title}</h3>
			<p>
				{@render children()}
			</p>
		</div>
	</div>
	<div class="action">
		<div>
			{@render decoration()}
		</div>
		{@render action()}
	</div>
</li>

<style lang="scss">
	@use '$lib/style/mixins' as *;

	.card {
		position: relative;
		cursor: default;
		display: grid;
		grid-template-rows: 1fr max-content;
		gap: 40px;
		text-align: start;
		border-radius: 16px;

		background-color: var(--card-background);
		border: 1px solid var(--card-border);
		transition:
			border 0.1s,
			background-color 0.1s;

		&:hover {
			background-color: var(--card-background-hover);
			border-color: var(--color, var(--card-border));
		}

		h3,
		:global(b),
		:global(p a) {
			color: var(--color);
			font-weight: bold;
		}

		@include on-confined {
			gap: 2em;
		}
	}

	img {
		border-radius: 8px;
		float: right;
		margin: 12px;
		scale: var(--scale, 1);
	}

	.content {
		margin: 20px;
		margin-bottom: 0;

		p {
			margin-top: 8px;
		}
	}

	p {
		margin: 0;
	}

	.action {
		margin: 20px;
		margin-top: 0;
		display: flex;
		gap: 4px;
		align-items: center;

		> div {
			flex: 1;
			color: hsla(from currentcolor h s l / 0.5);
			font-size: 0.85rem;
			line-height: 1.3;
		}

		@include on-confined {
			display: grid;
			gap: 8px;
		}
	}
</style>
