-- Mart Model
-- Agregate table for analytics

select
    date(pickup_datetime) as trip_date,
    count(*) as total_trips,
    sum(fare_amount) as total_revenue,
    avg(fare_amount) as avg_fare,
    avg(trip_distance) as avg_distance,
    avg(passenger_count) as avg_passengers
from {{ ref('stg_taxi_trips')}}
group by 1
order by 1
