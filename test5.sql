# You have the following tables with their fields:
# users: user_id, username, password, created_date
# orders: id, user_id, product_id, order_amount, order_date
# products: id, name
#
# In this test you will only be tested on Syntax and validity of the queries, there is no database system running on this laptop
#
# Write two SQL queries that will:
# - List all the users and sum their total life order amounts
#   (Expected output: user_id, username, lifetime_order_amount)

SELECT users.user_id, users.user_name, SUM(orders.order_amount) AS "lifetime_order_amount"
FROM users
INNER JOIN orders ON users.user_id = orders.user_id
GROUP BY users.user_id;

#
# - List all of the products and concatenate the usernames of the users who bought it
#   (Expected output: product_id, product_name, usernames) (usernames = john@packwire.com,phil@packwire.com)

SELECT products.product_id, products.product_name, 
GROUP_CONCAT ( users.username ) AS "usernames"
FROM products
INNER JOIN orders ON products.id = orders.product_id
INNER JOIN users ON orders.user_id = users.user_id;