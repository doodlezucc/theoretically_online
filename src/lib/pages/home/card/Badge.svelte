<script lang="ts">
	import { Spring } from 'svelte/motion';

	interface Props {
		title: string;
		logoUrl: string;
		logoScale?: number;
	}

	let { title, logoUrl, logoScale }: Props = $props();

	let sizePx = $derived(32 * (logoScale ?? 1.0));
	const revolutions = new Spring(0, {
		stiffness: 0.025,
		damping: 0.1,
		precision: 0.0005
	});
</script>

<div tabindex="-1" role="presentation" onpointerdown={() => revolutions.target++}>
	<img
		width={sizePx}
		height={sizePx}
		src={logoUrl}
		alt="'{title}' Badge"
		style:--revolutions={revolutions.current}
	/>
</div>

<style lang="scss">
	img {
		visibility: visible;
		cursor: pointer;
		filter: drop-shadow(0px 1px 1px #000a);

		rotate: calc(var(--revolutions) * 360deg);

		transition: scale 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275); // Overshoots

		&:hover {
			scale: 1.3;
		}

		&:active {
			scale: 1.1;
			transition-duration: 0.5s;
		}
	}
</style>
