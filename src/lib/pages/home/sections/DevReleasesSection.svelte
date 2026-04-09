<script lang="ts">
	import { asset } from '$app/paths';
	import { backgroundStopMotion } from '$lib/common/background-stop-motion';
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

	<div class="apps">
		<div class="app">
			<div>
				<h3>Graceful</h3>
				<p>A Dart library to handle <b>file logging</b> and <b>graceful exits</b>.</p>
				<a href="https://pub.dev/packages/graceful" class="button" target="_blank">
					Available on pub.dev <i class="fas fa-arrow-up-right-from-square"></i>
				</a>
			</div>
		</div>
		<div class="app">
			<div>
				<h3>Grid Space</h3>
				<p>
					A lightweight Dart library to create and convert between <b>square grids</b> and
					<b>hexagonal grids</b>.
				</p>
				<a href="https://pub.dev/packages/grid_space" class="button" target="_blank">
					Available on pub.dev <i class="fas fa-arrow-up-right-from-square"></i>
				</a>
			</div>
		</div>
		<div class="app">
			<div>
				<h3>MoodleREST</h3>
				<p>
					An unofficial generated API reference for
					<a href="https://moodle.org/" target="_blank">Moodle</a>
					web services.
				</p>
				<a href="https://doodlezucc.github.io/MoodleREST/" class="button" target="_blank">
					View API Reference <i class="fas fa-arrow-up-right-from-square"></i>
				</a>
			</div>
		</div>
		<div class="app">
			<div>
				<h3>Polymask</h3>
				<p>
					A polygon merging Dart library with web/SVG implementation, made to be used in <b
						>vector based drawing tools</b
					>.
				</p>
				<a href="https://github.com/doodlezucc/web_polymask" class="button" target="_blank">
					View on GitHub <i class="fab fa-github"></i>
				</a>
			</div>
		</div>
	</div>
</section>

<style lang="scss">
	@use '$lib/style/constants.scss' as *;

	section {
		background: var(--texture);
		gap: 4px;

		> p,
		h2 {
			background-color: $beige-on-blue;
			padding: 2px;
		}

		--button-hue: 39;
		--button-background: #{tainted(100%, 98%)};
		--button-background-hover: #{tainted(40%, 70%)};
		--button-background-active: #{tainted(25%, 54%)};
	}
</style>
