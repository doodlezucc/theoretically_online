<script lang="ts">
	import { asset } from '$app/paths';
	import { backgroundStopMotion } from '$lib/common/background-stop-motion';
	import CardGrid from '../card/CardGrid.svelte';
	import LineBreak from '../card/LineBreak.svelte';
	import DartGraceful from './dev-release-cards/DartGraceful.svelte';
	import DartGridSpace from './dev-release-cards/DartGridSpace.svelte';
	import DartPolymask from './dev-release-cards/DartPolymask.svelte';
	import MoodleRest from './dev-release-cards/MoodleRest.svelte';
	import SvelteInputSystem from './dev-release-cards/SvelteInputSystem.svelte';
	import SvelteTether from './dev-release-cards/SvelteTether.svelte';
	import SvelteYjs from './dev-release-cards/SvelteYjs.svelte';
	import TSocket from './dev-release-cards/TSocket.svelte';
</script>

<section
	class="dark-on-light contrast-children"
	style:--texture={'url("' + asset('/images/paper-blue.jpg') + '")'}
	{@attach backgroundStopMotion()}
>
	<h2>This One's For the Devs</h2>
	<p class="no-margin">Resources for developers, such as installable packages.</p>
	<p>
		(By the way, every personal project I decide to publish is <b>open source</b> and available on
		<a href="https://github.com/doodlezucc">GitHub</a>.)
	</p>

	<CardGrid>
		<SvelteYjs />
		<SvelteInputSystem />
		<SvelteTether />

		<LineBreak />

		<DartGraceful />
		<MoodleRest />

		<LineBreak />

		<DartGridSpace />
		<DartPolymask />
		<TSocket />
	</CardGrid>
</section>

<style lang="scss">
	@use '$lib/style/constants.scss' as *;

	$beige-on-blue: hsla(39, 100%, 92%, 0.65);

	section {
		background: var(--texture);
		gap: 4px;

		> p,
		h2 {
			background-color: $beige-on-blue;
			padding: 2px 4px;
		}

		--card-background: #{$beige-on-blue};
		--card-background-hover: hsla(39, 100%, 92%, 0.85);
		--card-border: transparent;

		--button-hue: 39;
		--button-background: #{tainted(100%, 98%)};
		--button-background-hover: #{tainted(40%, 70%)};
		--button-background-active: #{tainted(25%, 54%)};
	}
</style>
