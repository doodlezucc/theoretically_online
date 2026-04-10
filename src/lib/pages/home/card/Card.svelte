<script lang="ts">
	import type { Snippet } from 'svelte';

	interface Props {
		title: string;
		logoUrl?: string;
		color: string;
		action: Snippet;
		children: Snippet;
	}

	let { title, logoUrl, color, action, children }: Props = $props();
</script>

<li class="app" style:--color={color}>
	<div>
		{#if logoUrl}
			<img width="40" src={logoUrl} alt="'{title}' Logo" />
		{/if}
		<div class="content">
			<h3>{title}</h3>
			<p>
				{@render children()}
			</p>
		</div>
	</div>
	<div class="action">
		{@render action()}
	</div>
</li>

<style lang="scss">
	li {
		display: grid;
		grid-template-rows: 1fr max-content;
		text-align: start;
		border-radius: 16px;

		transition-duration: 0.1s;
		background-color: #4444;

		&:hover {
			background-color: #4445;
		}

		h3,
		:global(b) {
			color: var(--color);
			font-weight: bold;
		}
	}

	img {
		float: right;
		margin: 12px;
	}

	.content {
		margin: 20px;
		margin-bottom: 0;
	}

	p {
		margin: 0;
		margin-top: 4px;
	}

	.action {
		margin: 20px;
		display: flex;
		justify-content: end;
	}
</style>
