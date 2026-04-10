<script lang="ts">
	import { resolve } from '$app/paths';
	import Card from '../card/Card.svelte';
	import CardGrid from '../card/CardGrid.svelte';
</script>

<section id="demos">
	<h2>More Releases</h2>
	<p>A collection of usable software I finished so far.</p>

	<CardGrid>
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

		<Card
			title="FlpJck"
			logoUrl="https://raw.githubusercontent.com/doodlezucc/FlpJck/refs/heads/master/app/style/icon/icon.png"
			color="#ffc47f"
		>
			Always keep the latest versions of your <b>FL&nbsp;Studio projects</b> in the cloud.

			{#snippet action()}
				<a href="https://github.com/doodlezucc/FlpJck" class="button">
					View on GitHub <i class="fab fa-github"></i>
				</a>
			{/snippet}
		</Card>

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
	</CardGrid>
</section>
