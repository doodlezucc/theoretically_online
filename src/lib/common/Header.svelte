<header>
	<h1>theoretically·online</h1>
</header>

<style lang="scss">
	@use '$lib/style/mixins' as *;

	$light: #ffe6c5;

	header {
		position: sticky;
		top: 0;
		left: 0;
		width: 100%;
		z-index: 10;

		border-bottom: 1px solid $light;
		box-shadow: 0 4px 10px #0003;

		padding: 1em 0.5em;
		display: grid;
		place-content: center;
		background-color: #271f17;
		color: $light;
		z-index: 2;

		@include on-mobile {
			position: relative;
		}
	}

	h1 {
		font-family: 'Recursive', serif;
		font-size: 1.5em;
		font-weight: normal;
		text-transform: lowercase;
	}
</style>
