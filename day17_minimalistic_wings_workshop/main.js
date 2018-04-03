let ul = document.querySelector("ul")

class AllProducts{
    constructor(){
        this.all = []
    }


addEventListener(product){
    this.all.push(product)
    }
}

class Product {
    constructor(productName, price, image){
        this.productName = productName
        this.price = price
        this.price = image
    }
}   

axios.get("https://www.redbullshopus.com/products.json")
 .then((response) => {
     let data = response.data
     let allproducts = new AllProducts()

     data.forEach((item) => {

        let li = document.createElement("li")

        let product = new Product(
            item["title"]
            item["p"]
        )
     })
 })