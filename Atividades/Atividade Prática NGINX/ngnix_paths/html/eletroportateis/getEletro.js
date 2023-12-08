async function axiosGet() {
    axios.get(url, headers)
        .then(response => {
            getProduts(response.data.results)
        })
        .catch(error => {
            console.log(error)
        })
}

function getProduts(produtos) {
    const tbody = document.getElementById('tbody_produtos')
    for (p of produtos) {

        const tr = document.createElement('tr')
        tr.className = "align-middle"
        tr.id = p.objectId

        let td = document.createElement('td')
        td.innerHTML = p.objectId
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "0"
        td.innerHTML = p.name
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "1"
        td.innerHTML = p.brand
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "2"
        td.innerHTML = p.description
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "3"
        td.innerHTML = p.stock
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "4"
        td.innerHTML = p.price
        tr.appendChild(td)

        tbody.appendChild(tr)
    }
}