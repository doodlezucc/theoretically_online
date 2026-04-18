<script lang="ts">
	import ReleaseCard from './ReleaseCard.svelte';
</script>

<ReleaseCard title="SpeedRunners Multiplayer+" color="#55aaff" releaseType="Game Mod for PC">
	A mod for the game <a href="https://www.speedrunners.com/">SpeedRunners</a> to bump the default
	4-player limit up to 16.

	{#snippet action()}
		<a href="https://steamcommunity.com/sharedfiles/filedetails/?id=3364793221" class="button">
			View Installation Guide <i class="fab fa-steam"></i>
		</a>
	{/snippet}

	{#snippet releaseDate()}
		<time datetime="2024-11">November 2024</time>
	{/snippet}
</ReleaseCard>
