fetch("https://jsonplaceholder.typicode.com/users")
.then(response => response.json())
.then(data =>{
    console.log(data)
    preencherLista(data)
})

function preencherLista(data){
    const listContainer = document.getElementById("list-container")
    const ul = document.createElement('ul')
    data.forEach(item => {
        const li = document.createElement('li')
        li.textContent = item.name
        ul.appendChild(li)
    })

    listContainer.appendChild(ul)
}