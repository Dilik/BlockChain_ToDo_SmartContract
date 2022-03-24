App = {
    load: async ()=>{
        //load app
        await App.loadWeb3()
        console.log("App loading...")
    }  
}

$(()=>{
    $(window).load(()=>{
        App.load()
    })
})