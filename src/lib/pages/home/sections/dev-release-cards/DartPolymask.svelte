<script lang="ts">
	import Dart from './badges/Dart.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="web_polymask">
	A polygon merging Dart library with a web/SVG implementation, made to be used in
	<b>vector based drawing tools</b>.

	{#snippet action()}
		<a href="https://github.com/doodlezucc/web_polymask" class="button">
			Repository <i class="fab fa-github"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<Dart />
	{/snippet}
</DevReleaseCard>
