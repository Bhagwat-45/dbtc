{%- set inc_flag = 1 -%}
{%- set loc_var = 3 -%}

{% set cols_name = ["sales_id", "date_sk", "net_amount"]%}

SELECT
    {%for i in cols_name %}
        {{i}}
        {% if not loop.last %},{% endif %}
    {% endfor %}
FROM
    {{ ref('bronze_sales') }}

{% if inc_flag == 1%}
WHERE 
    date_sk > {{loc_var}}
{% endif %}