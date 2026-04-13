<script lang="ts">
	import MoveMusic from './release-cards/MoveMusic.svelte';

	import CardGrid from '../card/CardGrid.svelte';
	import LineBreak from '../card/LineBreak.svelte';
	import ClipShip from './release-cards/ClipShip.svelte';
	import FlpJck from './release-cards/FlpJck.svelte';
	import SnippetFeed from './release-cards/SnippetFeed.svelte';
	import SpeedRunnersMultiplayerMod from './release-cards/SpeedRunnersMultiplayerMod.svelte';
</script>

<section>
	<h2>More Releases</h2>
	<p>A collection of usable software I finished so far.</p>

	<CardGrid>
		<ClipShip />
		<FlpJck />
		<SpeedRunnersMultiplayerMod />

		<LineBreak />

		<SnippetFeed />
		<MoveMusic />
	</CardGrid>
</section>

<style lang="scss">
	section {
		--card-background: #3334;
		--card-background-hover: #4445;
		--card-border: #444a;
	}
</style>
