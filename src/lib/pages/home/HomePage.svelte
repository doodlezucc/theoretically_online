<script lang="ts">
	import { asset } from '$app/paths';
	import { onMount } from 'svelte';
	import AboutSection from './sections/AboutSection.svelte';
	import DevReleasesSection from './sections/DevReleasesSection.svelte';
	import DungeonClubSection from './sections/DungeonClubSection.svelte';
	import GreetingSection from './sections/GreetingSection.svelte';
	import ReleasesSection from './sections/ReleasesSection.svelte';

	const textureSize = 1024;
	let textureX = 0;
	let textureY = 0;

	function applyTextureOffset(elem: HTMLElement) {
		elem.style.backgroundPositionX = textureX + 'px';
		elem.style.backgroundPositionY = textureY + 'px';
	}

	onMount(() => {
		const slowFlickerTimer = setInterval(() => {
			textureX += textureSize / 3;
			textureY += (textureSize * 5) / 7;

			textureX %= textureSize;
			textureY %= textureSize;

			document.querySelectorAll<HTMLElement>('.flicker').forEach(applyTextureOffset);
		}, 600);

		return () => clearInterval(slowFlickerTimer);
	});
</script>

<div
	class="content"
	style:--tex-paper={'url("' + asset('/images/paper-with-fibers.jpg') + '")'}
	style:--tex-paper-blue={'url("' + asset('/images/paper-blue.jpg') + '")'}
>
	<GreetingSection />

	<DungeonClubSection />

	<ReleasesSection />

	<DevReleasesSection />

	<AboutSection />
</div>
