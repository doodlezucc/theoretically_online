<script lang="ts">
	import Card from '../../card/Card.svelte';
</script>

<Card
	title="FlpJck"
	logo={{
		url: 'https://raw.githubusercontent.com/doodlezucc/FlpJck/refs/heads/master/app/style/icon/icon.png'
	}}
	color="#ffc47f"
>
	Always keep the latest versions of your
	<b><a href="https://www.image-line.com/">FL&nbsp;Studio</a> projects</b>
	in the cloud.

	{#snippet action()}
		<a href="https://github.com/doodlezucc/FlpJck" class="button">
			View Project <i class="fab fa-github"></i>
		</a>
	{/snippet}

	{#snippet decoration()}
		Desktop Program
		<br />
		<time datetime="2020-08">August 2020</time>
	{/snippet}
</Card>
