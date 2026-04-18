<script lang="ts">
	import { asset } from '$app/paths';
</script>

<section class="cardboard">
	<div>
		<div>
			<h2>A virtual tabletop for <b>Dungeons & Dragons</b></h2>
			<p class="no-margin">Play together with players all over the world, whenever you want!</p>
		</div>
		<a href="https://dungeonclub.net/" class="button">Enter the Dungeon</a>
	</div>

	<svg width="100%" height="100%" viewBox="0 0 1920 100" preserveAspectRatio="xMidYMid slice">
		<defs>
			<pattern
				id="wave"
				patternUnits="userSpaceOnUse"
				width="4"
				height="21"
				patternTransform="scale(4, 2)"
			>
				<path d="M -1 20 L -1 1 Q 0 0, 1 1 T 3 1 T 5 1 L 5 20" fill="white" />
			</pattern>
			<pattern
				id="pattern"
				patternUnits="userSpaceOnUse"
				width="8"
				height="8"
				patternTransform="rotate(45)"
			>
				<line y2="100" stroke-width="0.7px" />
			</pattern>
			<pattern
				id="cardboard"
				patternUnits="userSpaceOnUse"
				width="1024"
				height="1024"
				patternTransform="scale(0.15)"
			>
				<image href={asset('/images/cardboard.jpg')} />
			</pattern>
		</defs>

		<mask id="cutout">
			<rect width="100%" height="11%" fill="url(#wave)" />
			<rect width="100%" height="80%" y="10%" fill="white" />
			<rect
				width="100%"
				height="11%"
				fill="url(#wave)"
				style="transform: translate(0, 100%) scale(1,-1)"
			/>
			<g fill="black">
				<rect class="cardboard-cutout" />
			</g>
		</mask>

		<g mask="url(#cutout)">
			<rect width="100%" height="100%" fill="url(#cardboard)" />
			<rect width="100%" height="100%" fill="url(#pattern)" />
		</g>

		<g class="shake">
			<g class="sticker">
				<path
					fill-rule="evenodd"
					clip-rule="evenodd"
					d="M64 7H11C5 7 2 10 2 16V113C2 119 6 123 12 123C15 123 17.5 121 20 119C22.5 117 25 115 28 115C31 115 34 117 37 119C40 121 43 123 46 123C49 123 52 121 55 119C58 117 61 115 64 115C67 115 70 117 73 119C76 121 79 123 82 123C85 123 88 121 91 119C94 117 97 115 100 115C103 115 105.5 117 108 119C110.5 121 113 123 116 123C122 123 126 119 126 113V16C126 10 123 7 117 7H64Z"
					fill="#FFB87D"
				/>
				<circle cx="38" cy="58" r="18" fill="#1A1717" stroke="transparent" />
				<circle cx="90" cy="58" r="18" fill="#1A1717" stroke="transparent" />
			</g>
		</g>
		<text x="50%" y="8%" dominant-baseline="hanging" text-anchor="middle">Dungeon Club</text>
	</svg>

	<i class="fas fa-star" style="left: 84%; top: 60%;"></i>
	<i
		class="fas fa-dice-d20"
		style="left: 90%; top: 10%; animation-direction: reverse; animation-delay: -2s;"
	></i>
	<i class="fas fa-magic" style="left: 9%; top: 40%;"></i>
	<i
		class="fas fa-dragon"
		style="left: 24%; top: 85%; animation-direction: reverse; animation-delay: -9s;"
	></i>
</section>

<style lang="scss">
	@use '$lib/style/constants' as *;
	@use '$lib/style/mixins' as *;

	@keyframes spin {
		0% {
			transform: rotate(0deg);
		}
		100% {
			transform: rotate(360deg);
		}
	}

	.cardboard {
		background: none;
		padding: 6rem 0;
		justify-content: center;

		--button-hue: 26;
		--button-background: #{tainted(100%, 77%)};
		--button-background-hover: #{tainted(65%, 65%)};
		--button-background-active: #{tainted(30%, 54%)};

		> * {
			z-index: 1;
		}

		b {
			color: var(--button-background);
		}

		> div {
			display: flex;
			align-items: center;
			flex-direction: column;
			padding: 16px;
			gap: 32px;
			width: calc(var(--cardboard-cutout-html-width) * 4);

			> div {
				text-align: center;
			}
		}

		> i {
			position: absolute;
			font-size: calc(2em + 1vw);
			color: #1a1717;
			animation: spin 12s linear infinite;
		}
	}

	.cardboard-cutout {
		transform: translateX(calc(50% - var(--cardboard-cutout-width-half)));
		y: var(--cardboard-cutout-inset);
		width: var(--cardboard-cutout-width);
		height: calc(100% - 2 * var(--cardboard-cutout-inset));
		rx: 4px;
	}

	$svg-overlap: 4%;
	$stroke-color: #1a1717;
	$outline-width: 0.13rem;
	$shake-amount: 5deg;
	$sticker-scale: 0.08;

	svg {
		position: absolute;
		pointer-events: none;
		top: -$svg-overlap;
		left: 0;
		width: 100%;
		height: 100% + 2 * $svg-overlap;
		z-index: 0;
		stroke-linejoin: round;
		filter: drop-shadow(0 0 4px #0005);

		line {
			stroke: $stroke-color;
		}

		text {
			pointer-events: all;
			fill: #fb8;
			stroke: $stroke-color;
			stroke-width: $outline-width * 1.5;
			paint-order: stroke;
			font-family: 'Recursive';
			font-size: var(--svg-title-size);
			font-weight: bold;
		}

		rect {
			pointer-events: none;
		}
	}

	@keyframes shake-offset {
		0% {
			transform: rotate(-$shake-amount);
		}
		50% {
			transform: rotate($shake-amount);
		}
		100% {
			transform: rotate(-$shake-amount);
		}
	}

	.shake {
		animation: shake-offset 3.5s ease-in-out infinite;
		transform-box: fill-box;
		transform-origin: top center;
	}

	$sticker-inset: 64px * $sticker-scale;

	.sticker {
		transform: translate(
				calc(50% - var(--cardboard-cutout-width-half) - $sticker-inset),
				calc(var(--cardboard-cutout-inset) - $sticker-inset)
			)
			scale($sticker-scale);
		stroke: $stroke-color;
		stroke-width: calc($outline-width / $sticker-scale);
		paint-order: stroke;
	}

	@include on-mobile {
		.sticker {
			display: none;
		}

		.cardboard {
			> i {
				display: none;
			}
		}
	}
</style>
