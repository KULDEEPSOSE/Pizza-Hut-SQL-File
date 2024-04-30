-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(Avg_order), 0)
FROM
    (SELECT 
        DATE(orders.order_date) AS Date,
            SUM(orders_details.quantity) AS Avg_order
    FROM
        orders
    JOIN orders_details ON orders.order_ID = orders_details.order_ID
    GROUP BY Date) AS order_quantity;
