<script lang="ts">
	import Card from '../../card/Card.svelte';
</script>

<Card
	title="SnippetFeed"
	logo={{
		url: 'https://raw.githubusercontent.com/doodlezucc/SnippetFeed/refs/heads/master/assets/icon/icon.png'
	}}
	color="#c3917d"
>
	Merge an audio file with an image to create a video suitable for <b>Instagram</b>.

	{#snippet action()}
		<a href="https://github.com/doodlezucc/SnippetFeed" class="button">
			View Project <i class="fab fa-github"></i>
		</a>
	{/snippet}

	{#snippet decoration()}
		Mobile App (not in stores though)
		<br />
		<time datetime="2020-09">September 2020</time>
	{/snippet}
</Card>
