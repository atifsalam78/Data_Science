SELECT * FROM orders
LEFT JOIN customer ON customer.customer_id=orders.customer_id;

SELECT COUNT(ORDER_ID) FROM orders;

SELECT * FROM orders, customer WHERE orders.customer_id = customer.customer_id;
SELECT * FROM orders ord , customer cust WHERE ord.customer_id = cust.customer_id;

SELECT order_id FROM order_item;

SELECT 
orders.order_id,
customer.customer_id,
orders.delivery_partner_id,
order_item.product_id,
customer_feedbacks.feedback_id,
customer.area,
customer.customer_name,
customer.customer_segment,
products.product_name,
products.category,
products.price,
order_item.quantity,
ROUND(products.price*order_item.quantity, 2) value,
delivery.promised_time,
delivery.delivery_time_minutes,
delivery.actual_time,
delivery.reasons_if_delayed,
customer_feedbacks.rating,
customer_feedbacks.feedback_category,
customer_feedbacks.feedback_text,
customer_feedbacks.sentiment,
rating.Emoji,
rating.Star,
DATE(orders.order_date) Date

FROM
    orders,
    customer,
    order_item,
    products,
    customer_feedbacks,
    delivery,
    rating
WHERE
    orders.customer_id = customer.customer_id
        AND ROUND(order_item.order_id) = orders.order_id
        AND order_item.product_id = ROUND(products.product_id)
        AND customer_feedbacks.customer_id = orders.customer_id
        AND customer_feedbacks.order_id = orders.order_id
        AND delivery.order_id = orders.order_id
        AND delivery.delivery_partner_id = orders.delivery_partner_id
        AND customer_feedbacks.rating = rating.Rating;



