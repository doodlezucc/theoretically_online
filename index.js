for (let app of document.getElementById("apps").children) {
    console.log(app);
    app.onclick = function(e) {
        window.location.href = this.getAttribute("href");
    }
}