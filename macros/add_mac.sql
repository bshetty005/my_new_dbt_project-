{% macro add(a,b) %}
{{a}} * {{b}}
{% endmacro %}

{%macro multiply(a,b)%}
{{return (a * b)}}
{%endmacro%}