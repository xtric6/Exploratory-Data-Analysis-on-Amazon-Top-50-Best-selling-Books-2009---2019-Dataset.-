-- THE DATA USED FOR THIS QUERY IS FROM KAGGLES AND IT CONTAINS THE TOP 5O BEST SELLING BOOKS FROM 2009-2019


use amazon;

SELECT 
    *
FROM
    amazon_50;
    
-- Author with the highest number of best selling books betwwwn year 2009 - 2019
Select author as Author,count(title) as 'Number of Best Selling Books'
from amazon_50
group by author
order by count(title) desc
limit 10;
-- JEFF KINNEY HAD THE HIGHEST WITH 12 BOOKS

-- Most Expensive Best selling Book on Amazon
Select Title,Price
from amazon_50
group by title
order by price desc
limit 10;
-- THE MOST EXPENSIVE SELLING BOOK IS 'Diagnostic and Statistical Manual of Mental Disorders, 5th Edition: DSM-5'


-- Average price of best selling books on Amazon to 50
Select round(AVG(PRICE),1)
from amazon_50;
-- AVERAGE PRICE IS 13.1 DOLLARS

-- What genre sold the most
select genre,count(genre)
from amazon_50
group by genre;
-- NON FICTION SOLD THE MOST

-- average price of genre and non genre books
Select genre,round(AVG(PRICE),1) as 'Average Price of Books'
from amazon_50
group by genre;
-- NON FICTION 14.8 DOLLLARS AND FICTION IS 10.9 DOLLARS

-- Overall Best Selling book from 2009 to 2019
select Author,Title,Count(Title)
from amazon_50
group by author,title
order by count(Title) desc
limit 10;
-- THE OVERALL BEST SELLING BOOK IS 'The 5 Love Languages: The Secret to Love That Lasts'

-- what years did the overall best selling book emerge
select Author,title,year
from amazon_50
where title =  'The 5 Love Languages: The Secret to Love That Lasts'
order by year;
-- this book was a best seller from 2009 to 2019


-- what genre is the overall best selling book
select Author,title,year,genre
from amazon_50
where title =  'The 5 Love Languages: The Secret to Love That Lasts'
group by genre
order by year;
-- ITS A NON FICTION BOOK
