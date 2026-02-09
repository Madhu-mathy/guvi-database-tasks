use productDB

/*to get all data*/
db.employees.find().pretty()

/*products with price between 400 and 800*/
db.employees.find({
product_price: { $gte: 400, $lte: 800 }
}).pretty()

/* products with price not between 400 and 600 */
db.employees.find({
$or: [
{ product_price: { $lt: 400 } },
{ product_price: { $gt: 600 } }
]
}).pretty()

/* four products greater than 500 */
db.employees.find({
product_price: { $gt: 500 }
}).limit(4).pretty()

/*product name and product material of products */
db.employees.find(
{},
{ _id: 0, product_name: 1, product_material: 1 }
).pretty()

/* product with row id 10 */
db.employees.find({
id: "10"
}).pretty()

/* product name and product material */
db.employees.find(
{},
{ _id: 0, product_name: 1, product_material: 1 }
).pretty()

/*products where material contains Soft*/
db.employees.find({
product_material: { $regex: "soft", $options: "i" }
}).pretty()

/* products with color indigo and price 492 */
db.employees.find({
product_color: "indigo",
product_price: 492
}).pretty()

/* delete products where price is 28 */
db.employees.deleteMany({
product_price: 28
})

/* verify the previous deletion */
db.employees.find({ product_price: 28 }).pretty()
