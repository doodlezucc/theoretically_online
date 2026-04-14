import { onMount } from 'svelte';

export function useAnimationTick(tick: (deltaSeconds: number) => void) {
	let lastFrameTime: DOMHighResTimeStamp;
	let scheduledHandler: number;

	function handleTick(time: DOMHighResTimeStamp) {
		const deltaMilliseconds = time - lastFrameTime;
		tick(deltaMilliseconds / 1000);

		lastFrameTime = time;
		scheduledHandler = requestAnimationFrame(handleTick);
	}

	onMount(() => {
		lastFrameTime = performance.now();
		scheduledHandler = requestAnimationFrame(handleTick);

		return () => {
			cancelAnimationFrame(scheduledHandler);
		};
	});
}
