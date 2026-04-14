<script lang="ts">
	import { asset } from '$app/paths';
	import { backgroundStopMotion } from '$lib/common/background-stop-motion';
	import NameCard from './introduction/NameCard.svelte';
</script>

<section
	class="dark-on-light"
	style:--texture={'url("' + asset('/images/paper-with-fibers.jpg') + '")'}
	{@attach backgroundStopMotion()}
>
	<h2>Hello!</h2>
	<p>I make web apps and stuff.</p>

	<div class="name-card">
		<NameCard />
	</div>
</section>

<style lang="scss">
	$dz-background: #eb6363;

	section {
		background-image: var(--texture);
		filter: sepia(0.2);

		text-align: center;
		justify-content: center;
	}

	p {
		margin: 0;
	}

	.name-card {
		margin: 40px 0;

		cursor: default;
		scale: 1;
		transition: scale 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275); // Overshoots

		&:hover {
			scale: 1.1;
		}
	}

	@media (min-width: 1500px) {
		.name-card {
			position: absolute;
			translate: 120% 0%;
			rotate: -2deg;
		}
	}
</style>
