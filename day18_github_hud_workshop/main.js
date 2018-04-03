let ul = document.querySelector("ul")

// class GithubProfile{
//     constructor()   {
//         this.all = []
//     }

//     add(git)    {
//         this.all.push(git)
//     }
// }

// class Git{
//     constructor(photo, repo, gitButton, repos){
//         this.photo = photo
//         this.repo = repo
//         this.gitButton = gitButton
//         this.repos = repos
//     }
// }

axios.get("https://api.github.com/users/adnanulchowdhury")
.then((response) => {
    let data = response.data
    // console.log(data)

    let li = document.createElement("li")

    let h1 = document.createElement("h1")
    let image = document.createElement("img")
    let repoNumber = document.createElement("h2")
    let visitButton = document.createElement("button")
    visitButton.id = "button"
   

    

    h1.innerHTML = data.name
    image.src = data.avatar_url
    console.log(image.src)
    visitButton.href = data.html_url
    

    repoNumber.innerHTML = "<h4>Number of Repository: " + data.public_repos + "</h4>"
    visitButton.innerHTML = "<h6> Visit my Github profile </h6>"
    

    ul.appendChild(h1)
    ul.appendChild(image)

    ul.appendChild(repoNumber)
    ul.appendChild(visitButton)

    function visit(){
        window.location = data.html_url;
    }

    visitButton.addEventListener("click", visit)

})

//2nd axios call

axios.get("https://api.github.com/users/adnanulchowdhury/repos")
.then((response) => {
    let data = response.data
    console.log(data)
})
