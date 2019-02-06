<!DOCTYPE html>
<html>
    <head>
        <title>Gengi Gjaldmiðla</title>
        <style>
            body{background: #dfefef;max-width: 50em;margin: 0 auto;}
            .box{border:1px dotted;border-radius: 5px;background-color: rgb(255,255,244 .5);padding:5px;}
            .box li {padding: .5em o}
        </style>
    </head>
    <body>
        <h1>Gengi Gjaldmiðla</h1>

        <div class="box">
            <ul>
            {% for i in data['results']%}
                <li>{{i['longName']}} {{i['shortName']}}, gengi ISKR: {{i['value']}} </li>
            {% endfor %}
            </ul>
        </div>
    </body>
</html>