<script lang="ts">
	import Dart from './badges/Dart.svelte';
	import DevReleaseCard from './DevReleaseCard.svelte';
</script>

<DevReleaseCard title="graceful">
	A Dart library to handle <b>file logging</b> and <b>graceful exits</b>.

	{#snippet action()}
		<a href="https://pub.dev/packages/graceful" class="button">
			pub.dev <i class="fas fa-arrow-up-right-from-square"></i>
		</a>
	{/snippet}

	{#snippet badges()}
		<Dart />
	{/snippet}
</DevReleaseCard>
