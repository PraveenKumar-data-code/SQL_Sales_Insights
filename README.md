# SQL_Sales_Insights
This project uses a series of SQL queries to derive business insights from a sales dataset. 
The goal is to identify trends and key metrics such as:
1) Top-Selling Products
2) High-Revenue Regions
3) Popular Product Combinations
4) Valuable Customers using RFM analysis.

                                                     Query 1: Top Product by Revenue (Country/Year)

Groups the sales data by country, product line (category), and year, then sums the revenue for each group. It uses a window function (DENSE_RANK) partitioned by country and year (ordered by revenue descending) to rank the product lines by revenue. The query then selects the product line with rank = 1 for each country-year, showing the highest-revenue product in each country for that year.

                                                      Query 2: Highest-Revenue City per Country 

Groups sales by country and city, summing the revenue for each city. It then applies a window function (ROW_NUMBER) partitioned by country and ordered by revenue descending to rank the cities within each country. The query selects the city with rank = 1 in each country, which is the city generating the most sales revenue in that country.

                                                      Query 3: Products Frequently Bought Together

Identifies pairs of products that are often purchased in the same order (market basket analysis). It first filters for shipped orders and lists each order number with its product codes. By self-joining this list on the order number (pairing each product with other products in the same order while avoiding duplicate pairs), it finds all product combinations sold together. The query then counts how many times each product pair occurs and returns those that appear together more than once, indicating frequently co-purchased items.

                                                      Query 4: Quarterly Revenue by Country 

Computes total sales revenue for each country in each quarter and lists the months included in each quarter. It extracts the year and quarter from the order dates, then groups sales by country, year, and quarter. The query sums the revenue (quantity × price) for each group. It also uses GROUP_CONCAT to list the distinct month names in that quarter, so the output shows each quarter’s total revenue alongside the names of the months it covers.

                                                      Query 5: Most Popular Product Line Across Countries 

Determines which product line is the top seller in the most countries. First, the query calculates total revenue for each country and product line. Using a window function (DENSE_RANK), it identifies the highest-revenue product line in each country. Then it counts how many countries have each product line as their top seller. This count ranks the product lines by popularity, revealing which product line is most frequently the number-one seller across all countries.

                                                      Query 6: RFM (Recency, Frequency, Monetary) Analysis

Identifies the highest-value customers based on recency, frequency, and monetary metrics. For each customer, the query computes recency (how recently they placed an order, measured by days since their last order), frequency (how many orders they placed), and monetary (total amount spent). Each metric is ranked into five buckets (quintiles) using the NTILE(5) function. Finally, the query selects customers who are in the top quintile (rank = 1) for all three metrics, listing these customers as the most valuable (top RFM) customers.

                                                      Query 7: Annual Revenue per Country (2003–2005) 

Calculates each country’s total sales revenue for the years 2003, 2004, and 2005. It uses conditional aggregation with CASE statements inside SUM to separately sum the revenue for each year. The CEIL function is applied to round up each year’s total. The result is one row per country with columns labeled 2003, 2004, and 2005, showing each country’s revenue for those years.
