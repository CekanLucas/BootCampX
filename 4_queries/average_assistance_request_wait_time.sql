--! Calculate the average time it takes to start an assistance request

SELECT AVG(started_at - created_at) AS Average_Time_To_Start 
FROM assistance_requests;

--?  average_time_to_start      lol it doesn't care about capitalization
--? -----------------------
--?  00:08:46.258793