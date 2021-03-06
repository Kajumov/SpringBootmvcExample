<#ftl encoding='UTF-8'>
<#import "/spring.ftl" as spring />
<@spring.bind "model"/>
<body xmlns="http://www.w3.org/1999/html">
<table>
    <tr>
        <th>ID</th>
        <th>Номер</th>
        <th>Марка</th>
        <th>Цвет</th>
        <th>Имя владельца</th>
    </tr>
<#list model.autos as auto>
    <tr>
        <td>${auto.id}</td>
        <td>${auto.number}</td>
        <td>${auto.model}</td>
        <td>${auto.color}</td>
        <td>${auto.owner.name}</td>
    </tr>
</#list>
</table>
<form action="/autos" method="post" style="">
    <br>
    <span>Добавление автомобиля</span><br><br>
    <#--<label>Номер</label>-->
    <input name="number" placeholder="Номер"/><br><br>
    <#--<label>Марка</label>-->
    <input name="model" placeholder="Марка"/><br><br>
    <#--<label>Цвет</label>-->
    <input name="color" placeholder="Цвет"/><br><br>
    <#--<label>ID владельца</label>-->
    <input name="ownerId" placeholder="ID владельца"/><br><br>
    <input type="submit" value="Добавить">
</form>
</body>