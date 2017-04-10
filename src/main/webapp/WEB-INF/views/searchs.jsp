<%--
  Created by IntelliJ IDEA.
  User: MackGeeker
  Date: 19.03.2017
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ValuesCategory</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>BestShop</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/mdb.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/myStyles.css" rel="stylesheet">
</head>
<body>


<script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript" ></script>
<script type="text/javascript">
    $('#ajaxTestButton1').click(function () {
        //alert("AjaxTest");
        $.ajax({
            type: "POST",
            url: "/Home/AjaxTest1",
            data: param = "",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: successFunc,
            error: errorFunc
        });
    });


    $('#ajaxTestButton2').click(function () {
        //alert("AjaxTest2");

        var testData = { 'testStr': $("#ajaxTesStr1").val() };

        $.ajax({
            type: "POST",
            url: "/search",
            data: JSON.stringify(testData),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: successFunc,
            error: errorFunc
        });
    });

    $('#ajaxTestButton3').click(function () {


        var testData =
            {
                'TestStr1': $("#ajaxTesStr3-1").val(),
                'TestStr2': $("#ajaxTesStr3-2").val(),
                'TestStr3': $("#ajaxTesStr3-3").val(),
                'TestStr4': $("#ajaxTesStr3-4").val()
            };

        $.ajax({
            type: "POST",
            url: "/Home/AjaxTest3",
            data: JSON.stringify(testData),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: successFunc,
            error: errorFunc
        });
    });


    function successFunc(data, status) {
        alert(data);
    }

    function errorFunc(errorData) {
        alert('Ошибка' + errorData.responseText);
    }

</script>



<button id="ajaxTestButton1" type="button">Простая загрузка данных</button>
<br><br>
<input type="text" id="ajaxTesStr1" value="test2222" />
<button id="ajaxTestButton2" type="button">Отсылка одной строки</button>
<br><br>
<input type="text" id="ajaxTesStr3-1" value="test3-1" />
<input type="text" id="ajaxTesStr3-2" value="test3-2" />
<input type="text" id="ajaxTesStr3-3" value="test3-2" />
<input type="text" id="ajaxTesStr3-4" value="test3-2" />
<button id="ajaxTestButton3" type="button">Отсылка набора данных</button>

<button id="test">Load</button>




</body>
</html>
