<script lang="ts">
	import type { Snippet } from 'svelte';

	interface Props {
		title: string;
		logoUrl?: string;
		releaseType: string;
		color: string;
		action: Snippet;
		releaseDate: Snippet;
		children: Snippet;
	}

	let { title, logoUrl, releaseType, color, action, releaseDate, children }: Props = $props();
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
		<p>
			{@render releaseDate()}
			<br />
			{releaseType}
		</p>
		{@render action()}
	</div>
</li>

<style lang="scss">
	li {
		cursor: default;
		display: grid;
		grid-template-rows: 1fr max-content;
		gap: 40px;
		text-align: start;
		border-radius: 16px;

		transition-duration: 0.1s;
		background-color: #3334;
		border: 1px solid #444a;

		&:hover {
			background-color: #4445;
			border-color: var(--color);
		}

		h3,
		:global(b),
		:global(p a) {
			color: var(--color);
			font-weight: bold;
		}
	}

	img {
		border-radius: 8px;
		float: right;
		margin: 12px;
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
		align-items: center;

		> p {
			flex: 1;
			opacity: 0.5;
			font-size: 0.85rem;
			line-height: 1.3;
		}
	}
</style>
