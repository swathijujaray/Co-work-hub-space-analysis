CREATE TABLE members (
    member_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    membership_type VARCHAR(20), -- 'daily', 'monthly', 'annual'
    city VARCHAR(50),
    join_date DATE
);

INSERT INTO members VALUES
(1, 'Aria Patel', 'aria@email.com', 'annual', 'Austin', '2022-03-15'),
(2, 'James Okafor', 'james@email.com', 'monthly', 'Denver', '2023-01-08'),
(3, 'Lena Cho', 'lena@email.com', 'daily', 'Austin', '2023-06-22'),
(4, 'Marcus Webb', 'marcus@email.com', 'annual', 'Chicago', '2021-11-30'),
(5, 'Sofia Reyes', 'sofia@email.com', 'monthly', 'Denver', '2022-09-01'),
(6, 'Tom Nguyen', 'tom@email.com', 'daily', 'Austin', '2023-07-14'),
(7, 'Priya Shah', 'priya@email.com', 'annual', 'Chicago', '2020-05-20'),
(8, 'Derek Muller', 'derek@email.com', 'monthly', 'Austin', '2023-03-11');

Select * from members;

select * from bookings;

select * from rooms;

select * from amenities_log;

--List of members from Austin, sorted alphabetically by name
SELECT * FROM members
where city='Austin'
ORDER BY full_name ASC;

--Rooms that have hourly rate above 20$
SELECT room_id,room_name,hourly_rate FROM rooms
where hourly_rate>20;

--Total revenue generated for each room
SELECT r.room_name, sum(b.total_cost) as total_revenue
FROM bookings b
JOIN rooms r
ON b.room_id=r.room_id
GROUP BY r.room_name 
ORDER BY total_revenue desc;

--Members who never made a booking
SELECT *
FROM members
WHERE member_id NOT IN (
    SELECT member_id

--Bookings made by months
SELECT
    COUNT(*) FILTER (WHERE booking_date >= '2024-01-01'
                     AND booking_date < '2024-02-01') AS jan_2024_bookings,
    COUNT(*) FILTER (WHERE booking_date >= '2024-02-01'
                     AND booking_date < '2024-03-01') AS feb_2024_bookings
FROM bookings;

--for each membership type, average total spend(that exceeds $150) for bookings 
SELECT 
    m.membership_type,
    AVG(member_total_spend) AS avg_total_spend
FROM (
    SELECT 
        member_id,
        SUM(total_cost) AS member_total_spend
    FROM bookings
    GROUP BY member_id
) b
JOIN members m ON b.member_id = m.member_id
GROUP BY m.membership_type
HAVING AVG(member_total_spend) > 150
ORDER BY avg_total_spend DESC;

--The members who booked a conference room and used the coffee amenity on the same date
SELECT DISTINCT m.full_name
FROM members m
JOIN bookings b ON m.member_id = b.member_id
JOIN rooms r ON b.room_id = r.room_id
JOIN amenities_log a ON m.member_id = a.member_id
WHERE r.room_type = 'conference'
  AND a.amenity = 'coffee'
  AND b.booking_date = a.used_on;