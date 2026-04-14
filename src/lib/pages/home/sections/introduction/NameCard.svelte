<script lang="ts">
	import OutlinedAvatar from './OutlinedAvatar.svelte';
</script>

<div class="card">
	<OutlinedAvatar />

	<div class="info">
		<em>Hi, my online pseudonym is</em>
		<h2>doodlezucc</h2>
		<p>This is my hobby project portfolio :)</p>
	</div>
</div>

<style lang="scss">
	.card {
		display: flex;
		text-align: start;
		align-items: center;
		gap: 16px;
		background-color: #fff;
		border-radius: 32px;
		padding: 12px;
		box-shadow: 0 3px 8px #0004;
		animation: pop-up 0.9s 0.5s cubic-bezier(0.445, 0.05, 0.55, 0.95) both;
	}

	.info {
		margin-right: 12px;
	}

	em {
		font-size: 0.75em;
		display: flex;
		height: 1.2em;
	}

	h2 {
		margin: 0;
		margin-bottom: 4px;
		text-decoration: underline;
	}

	p {
		margin-bottom: 4px;
	}

	@keyframes pop-up {
		0% {
			scale: 0;
		}
		20% {
			scale: 1.1;
		}
		40% {
			scale: 0.9;
		}
		60% {
			scale: 1.05;
		}
		80% {
			scale: 0.97;
		}
		100% {
			scale: 1;
		}
	}
</style>
