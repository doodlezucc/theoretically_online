<script lang="ts">
	import { resolve } from '$app/paths';
	import Card from '../../card/Card.svelte';
</script>

<Card
	title="Move Music"
	logoUrl="https://raw.githubusercontent.com/doodlezucc/move_music/master/web/style/favicon.ico"
	color="#ff4870"
>
	Move your liked songs, created playlists and followed artists from
	<b>YouTube&nbsp;Music to Spotify</b>.

	{#snippet action()}
		<a href={resolve('/movemusic')} class="button">Open web app</a>
	{/snippet}
</Card>
