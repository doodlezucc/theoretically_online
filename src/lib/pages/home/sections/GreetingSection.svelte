<section class="dark-on-light paper flicker">
	<h2>Hello!</h2>
	<p>I make web apps and stuff.</p>
</section>

<style lang="scss">
	@use '$lib/style/constants.scss' as *;

	section {
		padding-top: calc($section-padding-vertical + var(--header-margin));
		text-align: center;
		justify-content: center;

		> p {
			padding-bottom: 0;
			margin: 0;
		}
	}
</style>
