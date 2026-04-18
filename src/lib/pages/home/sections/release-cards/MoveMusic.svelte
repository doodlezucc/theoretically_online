<script lang="ts">
	import Card from '../../card/Card.svelte';
</script>

<Card
	title="Move Music"
	logo={{
		url: 'https://raw.githubusercontent.com/doodlezucc/move_music/master/web/style/favicon.ico',
		scale: 0.8
	}}
	color="#ff4870"
>
	Move your liked songs, created playlists and followed artists from
	<b>YouTube&nbsp;Music to Spotify</b>.

	{#snippet action()}
		<a href="https://movemusic.theoretically.online/" class="button"> Open Web App </a>
	{/snippet}

	{#snippet decoration()}
		Web App
		<br />
		<time datetime="2021-04">April 2021</time>
	{/snippet}
</Card>
