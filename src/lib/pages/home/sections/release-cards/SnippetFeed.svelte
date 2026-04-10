<script lang="ts">
	import Card from '../../card/Card.svelte';
</script>

<Card
	title="SnippetFeed"
	logoUrl="https://raw.githubusercontent.com/doodlezucc/SnippetFeed/refs/heads/master/assets/icon/icon.png"
	color="#c3917d"
>
	Merge an audio file with an image to create a video suitable for <b>Instagram</b>.

	{#snippet action()}
		<a href="https://github.com/doodlezucc/SnippetFeed" class="button">
			View on GitHub <i class="fab fa-github"></i>
		</a>
	{/snippet}
</Card>
