<script lang="ts">
	import { asset } from '$app/paths';
	import { backgroundStopMotion } from '$lib/common/background-stop-motion';
</script>

<section
	class="dark-on-light"
	style:--texture={'url("' + asset('/images/paper-with-fibers.jpg') + '")'}
	{@attach backgroundStopMotion()}
>
	<h2>Hello!</h2>
	<p>I make web apps and stuff.</p>
</section>

<style lang="scss">
	@use '$lib/style/constants.scss' as *;

	section {
		background-image: var(--texture);
		filter: sepia(0.2);

		text-align: center;
		justify-content: center;

		> p {
			padding-bottom: 0;
			margin: 0;
		}
	}
</style>
