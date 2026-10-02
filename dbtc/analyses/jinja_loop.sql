{%- set ipl_teams = ["CSK", "RCB", "MI", "KKR", "SRH", "DD", "LSG", "GT"]  -%}

{%for i in ipl_teams %}

    {% if i != "RCB"%}

        {{i}}

    {% else %}

        i hate {{i}}
        
    {% endif %}

{% endfor %}