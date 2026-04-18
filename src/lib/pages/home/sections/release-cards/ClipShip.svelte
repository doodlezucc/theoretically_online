<script lang="ts">
	import { asset } from '$app/paths';
	import ReleaseCard from './ReleaseCard.svelte';
</script>

<ReleaseCard
	title="Clipship"
	logo={{ url: asset('/logos/clipship.png'), scale: 0.9 }}
	color="#ff4b33"
	releaseType="Web App"
>
	A <b>multi-media editor</b> for cutting and converting video clips, right in your <b>browser</b>.

	{#snippet action()}
		<a href="https://clipship.github.io/" class="button">Open Web App</a>
	{/snippet}

	{#snippet releaseDate()}
		<time datetime="2025-05">May 2025</time>
	{/snippet}
</ReleaseCard>
