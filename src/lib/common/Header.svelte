<header>
	<div>
		<h1>theoretically·online</h1>
	</div>
	<span></span>
</header>

<style lang="scss">
	$light: #ffe6c5;

	header {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		z-index: 10;

		h1 {
			font-family: 'Recursive', serif;
			font-size: 1.5em;
			font-weight: normal;
			text-transform: lowercase;
		}

		div {
			padding: 1em 0.5em;
			align-items: center;
			justify-content: center;
			display: flex;
			background-color: #271f17;
			color: $light;
			backdrop-filter: grayscale(0.5) blur(4px);
			z-index: 2;
		}

		span {
			background-color: $light;
			height: 0.1em;
			box-shadow:
				0 0 10px #000a,
				0 0 20px #000a;
		}
	}
</style>
