<script lang="ts">
	import '$lib/style/global.scss';

	import Header from '$lib/common/Header.svelte';

	let { children } = $props();
</script>

<Header />

{@render children()}

<svelte:head>
	<script src="https://kit.fontawesome.com/a3de05bb60.js" crossorigin="anonymous"></script>
</svelte:head>
