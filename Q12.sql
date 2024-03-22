

-- Which of these SELECT queries gives the cost of a 'circuits' activity session for the member 00045?


---------------1
SELECT sesPrice
FROM Activity a, Price p
WHERE a.actID = p.actID
AND m.memCat = 00045
AND a.actName = 'circuits';


----------------------2 
SELECT sesPrice
FROM Price p, Member m
WHERE m.memCat = p.memCat
AND m.memID =00045
AND p.actName ='circuits';


-------------------3
SELECT actPrice
FROM Booking , Session S, Price p,  Member m
WHERE b.sesID = s.sesID
AND actID = p.actID
AND m.memCat = p.memCat
AND m.memID = 00045
AND a.actName = 'circuits';


-------------------4
SELECT sesPrice
FROM Activity a, Price p, Member m
WHERE a.actID = P.actID
AND m.memCat = P.memCat
AND m.memID = 00045
AND a.actName = 'circuits';



-----------------------5
SELECT sesPrice
FROM Booking, Session S,  Price p, Member m
WHERE b.sesID = s.sesID
AND actID = p.actID
AND m.memCat = P.memCat
AND m.memID =  00045
AND a.actName = 'circuits';