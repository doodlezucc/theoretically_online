<div class="break"></div>

<style lang="scss">
	@use '$lib/style/mixins' as *;

	.break {
		flex-basis: 100%;

		@include on-confined {
			display: none;
		}
	}
</style>
