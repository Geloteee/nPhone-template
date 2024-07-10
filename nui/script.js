let API = window.parent

API.onOpenApp('customApp', () => {
    API.getSettings((settings) => {
        document.getElementById('main-app-container').style.zoom = settings.zoomPercentage + '%'
    })
})

API.onCloseApp('customApp', () => {
    console.log('CLOSING APP')
})

API.onSettingsChange((settings) => {
    document.getElementById('main-app-container').style.zoom = settings.zoomPercentage + '%'
})

document.getElementById('button-example').addEventListener('click', () => {
    API.selectGallery({
        includeVideos: false,
        includeImages: true,
        limit: 1,
        cb: (data) => {
            document.getElementById('image-src').src = data[0].media
        }
    })
})