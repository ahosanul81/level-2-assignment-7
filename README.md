### 1. What is PostgreSQL?

PostgreSQL হলো একটি শক্তিশালী, ওপেন সোর্স ওবজেক্ট রিলেশনাল ডেটাবেজ সিসটেম। এটি Structured Query Langauage (SQL) এর মান অনুযায়ী পরিচালিত হয়। এই ডেটাবেজ সাধারণত টেবিল ও টেবিলের মধ্যকার সম্পর্ক নিয়ে কাজ করে থাকে।

### 2. What is the purpose of a database schema in PostgreSQL?

PostgreSQL-এ ডাটাবেস স্কিমা (Schema) একটি লজিক্যাল কাঠামো , যা ডাটাবেসের বিভিন্ন উপাদান যেমন টেবিল, ভিউ, ফাংশন ইত্যাদি গুছিয়ে রাখে। এটি মূলত ডাটাবেজকে সংগঠিতভাবে ব্যবস্থাপনা করতে সাহায্য করে।

#### যে সমস্ত কারণে স্কিমা ব্যবহার করা হয়:

1. টেবিলের কনফ্লিক্ট এড়াতে।
2. ইউজারের এক্সেস কন্ট্রোল করতে।

### 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

প্রাইমারি কি হলো এমন একটি কলাম যার মান সবসময় ইউনিক হবে এবং কখন ফাকা বা null হতে পারবে না। প্রতিটি রেকর্ড বা রো কে আলাদাভাবে চিহ্নিত করতে প্রাইমারি কি সবচেয়ে কার্যকরী।  
ফরেন কি হলো এমন একটি কলাম যেটি অন্য একটি টেবিলের প্রাইমারি কি হিসেবে কাজ করে।

### 4. What is the difference between the VARCHAR and CHAR data types?

#### CHAR()

- ফিক্সড-লেংথ স্ট্রিং
- দৈর্ঘ্য সবসময় n ক্যারেক্টারের জায়গা নেয়
- স্টোরেজ অপ্রয়োজনীয় স্পেসও ধরে রাখে (padding করে)

#### VARCHAR()

- ভ্যারিয়েবল-লেংথ (পরিবর্তনশীল দৈর্ঘ্য) স্ট্রিং
- যতটুকু দরকার ততটুকু জায়গা নেয়, n পর্যন্ত
- শুধুমাত্র ব্যবহৃত ক্যারেক্টার স্টোর করে

### 5. Explain the purpose of the WHERE clause in a SELECT statement.

আমরা যখন ডাটা কুয়েরি করি, তখন আমাদের ঐ টেবিলের সমস্ত ডাটা নাও লাগতে পারে। তাই কোন ডাটাগুলো আমার প্রয়োজন ঐ শর্ত জুগে দেওয়া হয় WHERE clause এর সাথে।

### 6. What are the LIMIT and OFFSET clauses used for?

ডাটা কুয়েরি করার সময়, ডাটার সংখ্যা নির্ধারণ করার জন্য LIMIT ব্যবহার করা হয়।

### 7. How can you modify data using UPDATE statements?

`UPDATE table_name SET column_name = value`

### 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

SQL এ JOIN একটি গুরুত্বপূর্ণ অপারেশন। আমাদের দুইটি টেবিল নিয়ে কাজ করতে হলে JOIN অপারেশন ব্যবহার করতে হবে।  
এখানে দুইটি টেবিলের মাঝে একটি সেতু বন্ধন থাকে যেটাকে বলা হয় ফরেন কি। এই ফরেন কি এর মাধ্যমে টেবিলকে যুক্ত করা যায়।

### 9. Explain the GROUP BY clause and its role in aggregation operations.

GROUP BY clause হলো একটি কলামের ভিতরে একাধিক ফিল্ডের ভ্যালু একই হলে, GROUP BY clause ব্যবহারের মাধ্যমে আমরা বেশ কিছু aggregate ফাংশনের কাজ করতে পারি। যেমন, avg(), count(), sum(), max()।

### 10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?

`SELECT group_by_column_name ,COUNT()/SUM()/AVG()  FROM table_name GROUP BY column_name`
