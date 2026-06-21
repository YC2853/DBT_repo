{{ config(materialized='table', schema='bronze', alias='bronze_electricity')}}

select *, 'dbt' as from_source from {{ source('raw', 'Raw_Electricity')}}