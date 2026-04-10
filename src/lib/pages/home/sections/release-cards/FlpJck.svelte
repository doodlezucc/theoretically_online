<script lang="ts">
	import Card from '../../card/Card.svelte';
</script>

<Card
	title="FlpJck"
	logoUrl="https://raw.githubusercontent.com/doodlezucc/FlpJck/refs/heads/master/app/style/icon/icon.png"
	color="#ffc47f"
>
	Always keep the latest versions of your <b>FL&nbsp;Studio projects</b> in the cloud.

	{#snippet action()}
		<a href="https://github.com/doodlezucc/FlpJck" class="button">
			View on GitHub <i class="fab fa-github"></i>
		</a>
	{/snippet}
</Card>
