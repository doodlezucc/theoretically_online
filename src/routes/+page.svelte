<script lang="ts">
	import { asset } from '$app/paths';
	import HomePage from '$lib/pages/home/HomePage.svelte';
</script>

<svelte:head>
	<title>Theoretically Online</title>
	<meta name="description" content="A collection of personal work, between software and music." />
	<link rel="icon" href={asset('/favicon.ico')} />
</svelte:head>

<HomePage />
