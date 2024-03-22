4 Which of these SELECT queries lists the names and emails of all members who are booked onto session 1237?

SELECT memName, memEmail
FROM Member m, Session s
WHERE m.memID = s.memID
AND s.seaID = '1237';

SELECT memName, memEmail
FROM Booking
WHERE b.seaID = '1237';

SELECT memName, memEmail
FROM Member m, Booking b
WHERE m.memID = b.memID
AND b.seaID = '1237';

SELECT memName, memEmail
FROM Member m, Booking b, Session s
WHERE m.memID = b.memID
AND b.seaID = s.seaID
AND s.seaID = '1237';

SELECT memName, memEmail, sesID
FROM Member m, Booking b, Session s
WHERE m.memID = b.memID
AND s.actID = a.actID
AND s.seaID = '1237';
