<script lang="ts">
	import Dart from './badges/Dart.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="grid_space">
	A lightweight Dart library to create and convert between <b>square grids</b> and
	<b>hexagonal grids</b>.

	{#snippet action()}
		<a href="https://pub.dev/packages/grid_space" class="button">
			pub.dev <i class="fas fa-arrow-up-right-from-square"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<Dart />
	{/snippet}
</DevReleaseCard>
