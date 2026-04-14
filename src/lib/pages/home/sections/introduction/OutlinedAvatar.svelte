<script lang="ts">
	import { asset } from '$app/paths';
	import { useAnimationTick } from '$lib/common/useAnimationTick.svelte';

	let strokeOffset = $state(0);

	useAnimationTick((delta) => {
		strokeOffset -= 20 * delta;
	});
</script>

<svg width="88" height="88" viewBox="-12 -12 88 88">
	<rect id="rect" width="64" height="64" rx="12" fill="transparent"></rect>
	<clipPath id="avatarRounding">
		<use xlink:href="#rect" />
	</clipPath>

	<g stroke-dashoffset={strokeOffset}>
		<image
			width="64"
			height="64"
			href={asset('/images/doodlezucc-avatar.png')}
			clip-path="url(#avatarRounding)"
		/>
		<rect class="dashed" x="-6" y="-6" width="76" height="76" rx="18"></rect>
	</g>
</svg>

<style lang="scss">
	g {
		fill: none;
	}

	.dashed {
		stroke: #000;
		stroke-width: 2.5px;
		stroke-dasharray: 10.75px 12px;
		stroke-linecap: round;
	}

	image {
		image-rendering: pixelated;
	}
</style>
