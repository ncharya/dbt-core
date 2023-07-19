{{ config(materialized='table') }}

with source_data as (

   SELECT "index", user_id, first_name, last_name, sex, email, phone, date_of_birth, job_title
FROM dev.people where first_name  like 'S%'



)

select *
from source_data