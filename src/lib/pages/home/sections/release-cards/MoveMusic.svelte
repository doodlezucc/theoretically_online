<script lang="ts">
	import ReleaseCard from './ReleaseCard.svelte';
</script>

<ReleaseCard
	title="Move Music"
	logo={{
		url: 'https://raw.githubusercontent.com/doodlezucc/move_music/master/web/style/favicon.ico',
		scale: 0.8
	}}
	color="#ff4870"
	releaseType="Web App"
>
	Move your liked songs, created playlists and followed artists from
	<b>YouTube&nbsp;Music to Spotify</b>.

	{#snippet action()}
		<a href="https://movemusic.theoretically.online/" class="button"> Open Web App </a>
	{/snippet}

	{#snippet releaseDate()}
		<time datetime="2021-04">April 2021</time>
	{/snippet}
</ReleaseCard>
