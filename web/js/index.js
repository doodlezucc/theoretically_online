const textureSize = 1024;
let textureX = 0;
let textureY = 0;

/**
 * @param {HTMLElement} elem 
 */
function applyTextureOffset(elem) {
    elem.style.backgroundPositionX = textureX + "px";
    elem.style.backgroundPositionY = textureY + "px";
}

let slowFlickerTimer = setInterval(() => {
    textureX += textureSize / 3;
    textureY += textureSize / 7;

    document.querySelectorAll(".flicker").forEach(applyTextureOffset);
}, 600);
