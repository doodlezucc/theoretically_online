<script lang="ts">
	import { page } from '$app/state';
	import ErrorPage from '$lib/pages/error/ErrorPage.svelte';
</script>

<ErrorPage title="Error {page.status}">
	<p>{page.error?.message}</p>
</ErrorPage>
