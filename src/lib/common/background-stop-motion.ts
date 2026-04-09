import type { Attachment } from 'svelte/attachments';

let globalStopMotionInterval: NodeJS.Timeout | undefined;
const attachedElements = new Set<HTMLElement>();

function createInterval(): NodeJS.Timeout {
	const textureSize = 1024;
	let offsetX = 0;
	let offsetY = 0;

	return setInterval(() => {
		offsetX += textureSize / 3;
		offsetY += (textureSize * 5) / 7;

		offsetX %= textureSize;
		offsetY %= textureSize;

		for (const element of attachedElements) {
			element.style.backgroundPositionX = offsetX + 'px';
			element.style.backgroundPositionY = offsetY + 'px';
		}
	}, 600);
}

export function backgroundStopMotion(): Attachment<HTMLElement> {
	globalStopMotionInterval ??= createInterval();

	return (element) => {
		attachedElements.add(element);

		return () => {
			attachedElements.delete(element);
		};
	};
}
