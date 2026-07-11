select country,
sum(sales) as total_sales
from {{ref('mapping')}}
group by country