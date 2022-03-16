function rebuildLinks(){
    let anchors = document.querySelectorAll("html-blob a")
    anchors.forEach(a=>{
        if(a.href.indexOf("https://www.google.com/url?q=") === 0 && a.target === "_blank"){
            a.href = decodeURIComponent((a.href).split('https://www.google.com/url?q=')[1].split('&')[0]) 
            a.target = ""
        }
    })
}

document.body.addEventListener('click', rebuildLinks, true); 