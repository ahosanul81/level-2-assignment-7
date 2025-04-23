-- Active: 1744639322091@@127.0.0.1@5432@bookstore_db@public
-- Active: 1744639322091@@127.0.0.1@5432@bookstore_db

create table books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price INT check (price >= 0),
    stock INT check (price >= 0),
    published_year INT
)

CREATE Table customers (
    id  SERIAL PRIMARY KEY,
    name  VARCHAR(50) NOT NULL,
    email  VARCHAR(50) NOT NULL,
    joined_date  DATE
)


CREATE Table orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id) NOT NULL,
    book_id INT REFERENCES books(id) NOT NULL,
    quantity INT check (quantity > 0) NOT NULL,
    order_date TIMESTAMP NOT NULL
)




INSERT into books (title, author, price, stock, published_year) 
VALUES ('The Lost Empire', 'John Maxwell', 350, 20, 2018),
('Dream Beyond', 'Alicia Brown', 400, 10, 2020),
('Mystic Forest', 'David Lee', 500, 15, 2015),
('Ocean Whisper', 'Sara Kent', 300, 12, 2019),
('Mountain Heart', 'Robert Stone', 420, 8, 2016),
('Hidden Truths', 'Emily Clark', 280, 25, 2021),
('Twilight Vision', 'Steven Bright', 520, 10, 2017),
('Shadow Realm', 'Nina Waters', 390, 18, 2018),
('Ancient Echoes', 'Liam Adams', 310, 14, 2014),
('The Mind Code', 'Olivia Hayes', 450, 9, 2023),
('Fires of Winter', 'William Burns', 270, 19, 2022),
('Time Jumper', 'Sophia Woods', 330, 20, 2020),
('Frozen World', 'James North', 360, 16, 2021),
('Silent Scream', 'Laura Lake', 410, 11, 2016),
('Dark Signals', 'Ethan Frost', 500, 7, 2017),
('Golden Path', 'Isabella Field', 320, 15, 2019),
('Echo in Rain', 'Noah Ray', 430, 10, 2022),
('Rise Again', 'Mason Hart', 390, 13, 2015),
('Steel Storm', 'Lily Cross', 460, 8, 2023),
('Phoenix Fall', 'Henry Blake', 310, 21, 2021),
('Final Hour', 'Chloe Bloom', 340, 17, 2020),
('Burning Ice', 'Logan Bell', 495, 9, 2018),
('Sky Runners', 'Zoe Nash', 385, 14, 2019),
('Crimson Sky', 'Caleb Knox', 275, 12, 2014),
('Velvet Shadows', 'Ava Dale', 290, 13, 2022),
('The Drift', 'Jackson Starr', 430, 11, 2017),
('Code Runner', 'Mila Shaw', 350, 18, 2023),
('Iron Blood', 'Lucas Reed', 370, 20, 2016),
('Maze of Light', 'Ella Rose', 405, 15, 2015),
('Vortex Edge', 'Benjamin Storm', 440, 6, 2019),
('Winds of Flame', 'Emma Lane', 315, 9, 2022),
('Infinite Night', 'Nathan Snow', 500, 10, 2021),
('Echo Chamber', 'Grace Vaughn', 325, 12, 2014),
('Neon Dust', 'Owen Hill', 475, 11, 2017),
('Glass Horizon', 'Luna Sparks', 290, 16, 2018),
('Stolen Light', 'Samuel Ray', 405, 14, 2016),
('Pulse Break', 'Aria Flynn', 315, 10, 2020),
('Obsidian Path', 'Carter Wren', 455, 7, 2023),
('Soul Frame', 'Ella James', 370, 13, 2021),
('Electric Heart', 'Wyatt Moore', 340, 19, 2015),
('Gravity Wars', 'Layla King', 420, 8, 2022),
('Cinder Mark', 'Aiden Brooks', 365, 15, 2019),
('Mirror Maze', 'Scarlett Frost', 490, 11, 2018),
('The Awakening', 'Gabriel Dawn', 305, 17, 2020),
('Savage Peace', 'Hannah Stone', 360, 10, 2023),
('Dead Reckoning', 'Julian West', 380, 14, 2016),
('Echo Trap', 'Zoey Finch', 410, 12, 2017),
('Bright Fade', 'Isaac Holt', 345, 18, 2021),
('Pulse Horizon', 'Victoria Ray', 425, 9, 2015),
('Neon Cross', 'Sebastian Cole', 390, 13, 2022),
('Nova Rush', 'Abigail Rose', 475, 8, 2023);



INSERT INTO customers (name,email, joined_date) 
VALUES ('Ahsanul Haque', 'ahsanul@example.com', '2022-01-15'),
('Nusrat Jahan', 'nusratj@example.com', '2021-06-10'),
('Riyad Mahmud', 'riyad.m@example.com', '2023-03-22'),
('Tanvir Hasan', 'tanvirh@example.com', '2020-11-30'),
('Sumaiya Akter', 'sumaiya@example.com', '2019-09-05'),
('Mehedi Hasan', 'mehedih@example.com', '2022-12-01'),
('Farzana Sultana', 'farzana.s@example.com', '2021-08-19'),
('Imran Hossain', 'imranh@example.com', '2023-02-10'),
('Sadia Afrin', 'sadiaa@example.com', '2020-07-17'),
('Jamilur Rahman', 'jamilur@example.com', '2018-05-22'),
('Arifa Khatun', 'arifak@example.com', '2021-04-14'),
('Nazmul Hasan', 'nazmulh@example.com', '2019-01-28'),
('Shamim Ahmed', 'shamim@example.com', '2022-09-09'),
('Tania Rahman', 'taniar@example.com', '2023-06-03'),
('Rasel Khan', 'raselk@example.com', '2020-03-11'),
('Maliha Ferdous', 'maliha@example.com', '2018-12-24'),
('Towhid Alam', 'towhid@example.com', '2021-10-16'),
('Fahmida Yasmin', 'fahmida@example.com', '2022-07-25'),
('Sajib Chowdhury', 'sajib@example.com', '2023-01-02'),
('Laboni Akter', 'laboni@example.com', '2020-08-18');


INSERT INTO orders (customer_id, book_id, quantity, order_date) VALUES
(1, 5, 2, '2023-12-15 10:30:00'),
(2, 12, 1, '2024-01-03 14:45:00'),
(3, 9, 3, '2024-02-20 09:00:00'),
(3, 22, 1, '2024-03-11 12:20:00'),
(3, 7, 2, '2024-03-25 17:10:00'),
(6, 18, 1, '2024-04-01 08:50:00'),
(7, 33, 4, '2024-04-06 15:35:00'),
(9, 3, 1, '2024-04-10 11:00:00'),
(9, 45, 2, '2024-04-15 16:00:00'),
(9, 27, 1, '2024-04-16 10:10:00'),
(11, 8, 2, '2024-04-17 12:00:00'),
(12, 19, 1, '2024-04-18 14:30:00'),
(14, 25, 3, '2024-04-18 15:45:00'),
(14, 30, 2, '2024-04-19 10:15:00'),
(15, 41, 1, '2024-04-19 11:20:00'),
(16, 50, 1, '2024-04-19 13:00:00'),
(18, 2, 5, '2024-04-20 09:45:00'),
(17, 16, 1, '2024-04-20 14:10:00'),
(18, 23, 3, '2024-04-21 10:05:00'),
(20, 14, 2, '2024-04-21 15:55:00');






-- problem -1: Find books that are out of stock.

select title from books WHERE stock = 0


-- problem 2 : Retrieve the most expensive book in the store.

SELECT * from books ORDER BY price DESC LIMIT 1 


-- problem 3:  Find the total number of orders placed by each customer.

SELECT customer_id,  count(quantity) from orders GROUP BY customer_id


-- problem 4: Calculate the total revenue generated from book sales.

SELECT sum(quantity * price) as total_revenue from orders JOIN books on books.id = orders.book_id



-- problem %: List all customers who have placed more than one order.

SELECT  customer_id , name, count(*) as order_count from orders JOIN customers on customers.id = orders.customer_id  GROUP BY customer_id, name   HAVING count(*) > 1


-- problem 6:  Find the average price of books in the store.
SELECT round(avg(price), 2) from books 


-- problem 7: Increase the price of all books published before 2000 by 10%.


update books set price = (price * 10/100)+ price WHERE id in(SELECT id from books WHERE published_year < 2000 )


-- problem 8: Delete customers who haven't placed any orders.


DELETE from customers WHERE id NOT in(SELECT customer_id from orders GROUP BY customer_id)

