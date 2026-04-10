<script lang="ts">
	import MoveMusic from './release-cards/MoveMusic.svelte';

	import CardGrid from '../card/CardGrid.svelte';
	import LineBreak from '../card/LineBreak.svelte';
	import FlpJck from './release-cards/FlpJck.svelte';
	import SnippetFeed from './release-cards/SnippetFeed.svelte';
</script>

<section id="demos">
	<h2>More Releases</h2>
	<p>A collection of usable software I finished so far.</p>

	<CardGrid>
		<MoveMusic />
		<FlpJck />
		<SnippetFeed />

		<LineBreak />
	</CardGrid>
</section>
