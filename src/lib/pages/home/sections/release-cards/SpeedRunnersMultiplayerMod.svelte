<script lang="ts">
	import Card from '../../card/Card.svelte';
</script>

<Card title="SpeedRunners Multiplayer+" releaseType="Game Mod for PC" color="#55aaff">
	A mod for the game <a href="https://www.speedrunners.com/">SpeedRunners</a> to bump the default
	4-player limit up to 16.

	{#snippet action()}
		<a href="https://steamcommunity.com/sharedfiles/filedetails/?id=3364793221" class="button">
			View Installation Guide <i class="fab fa-steam-symbol"></i>
		</a>
	{/snippet}

	{#snippet releaseDate()}
		<time datetime="2024-11">November 2024</time>
	{/snippet}
</Card>
