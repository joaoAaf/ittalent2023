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
        td.innerHTML = p.Nome
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "1"
        td.innerHTML = p.Marca
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "2"
        td.innerHTML = p.Descricao
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "3"
        td.innerHTML = p.QuantidadeEstoque
        tr.appendChild(td)

        td = document.createElement('td')
        td.id = p.objectId + "4"
        td.innerHTML = p.Preco
        tr.appendChild(td)

        tbody.appendChild(tr)
    }
}