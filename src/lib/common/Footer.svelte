<footer>
	<nav>
		<ul class="right-on-mobile">
			<li>&copy; 2026 doodlezucc</li>
		</ul>
		<ul>
			<b>Platforms I'm On</b>
			<li>
				<a href="https://github.com/doodlezucc">GitHub</a>
			</li>
		</ul>
		<ul>
			<b>My Other Websites</b>
			<li>
				<a href="https://dungeonclub.net/">Dungeon Club</a>
			</li>
			<li>
				<a href="https://knitwork.cc/">Knitwork</a>
			</li>
		</ul>
	</nav>
</footer>

<style lang="scss">
	@use '$lib/style/mixins' as *;

	footer {
		padding: 32px 64px 48px 64px;

		@include on-mobile {
			padding: 24px;
		}
	}

	nav {
		position: relative;
		display: grid;
		grid-auto-flow: column;
		place-content: center;
		gap: 80px;

		@include on-mobile {
			display: flex;
			flex-direction: column;
			gap: 8px;
		}
	}

	@include on-mobile {
		.right-on-mobile {
			position: absolute;
			top: 0;
			right: 0;
		}
	}

	ul {
		padding-inline: 0;
	}

	li {
		list-style: none;
	}

	b {
		font-weight: 700;
	}

	a {
		text-decoration: none;
		font-weight: normal;
	}
</style>
