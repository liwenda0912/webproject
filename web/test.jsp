<%--
  Created by IntelliJ IDEA.
  User: 10260
  Date: 2023/10/25
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://unpkg.com/element-plus"></script>
  <link >
  <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>

  <!-- <link rel="stylesheet" href="./../common/common.css"> -->
  <title>Document</title>
  <style>
    *{
      margin: 0;
      padding: 0;
    }
    ul,li{
      list-style: none;

    }
    .one{
      width: 600px;
      background-color: coral;
      height: 30px;
      margin: 0 auto;
    }
    .one li{
      float: left;
      width: 100px;
      text-align: center;
      line-height: 30px;
    }
    .one li:hover{
      background-color: #fff;
      color: coral;
    }

    .one .two{
      display: none;
    }
    .one li:hover .two{
      display: block;
    }
    .one .two li{
      background-color: cadetblue;
    }

    .one .two li:hover{
      background-color: honeydew;
    }
    a{
      display: block;
      text-decoration: none;
    }
  </style>
</head>
<body>

<ul class="one">
  <li><a href="">一级</a> </li>
  <li><a href="">一级</a> </li>
  <li><a href="">一级</a>
    <ul class="two">
      <li><a href="">二级</a> </li>
      <li><a href="">二级</a> </li>
      <li><a href="">二级</a> </li>
    </ul>
  </li>
  <li><a href="">一级</a> </li>
  <li><a href="">一级</a> </li>
  <li><a href="">一级</a> </li>
</ul>


<div id="app">
  <div >
    <p>{{number}}</p>
  </div>
</div>
<div>
  <%String username = (String) request.getAttribute("username");%>
  <%=username%>
</div>
<img src="picture/set.jpg" alt="picture is onload!" width="512" height="512" usemap="#planet map">
<map name="planet map">
  <area shape="rect" coords="0,0,20,20" alt="Sun" href="index.jsp">
  <area shape="circle" coords="30,30,10" alt="Mercury" href="test.jsp">
  <area shape="circle" coords="45,45,20" alt="Venus" href="border-pie.jsp">
</map>
<script>
  const { createApp, ref } = Vue
  let name ={}
  const Data =createApp({
    data:{
      number:1
    }
  })
  const APP = createApp({
    functions(){
      this.data = this.number;
      this.name.push(this.data)
      console.log(name)
    }

  })
  APP.use(ElementPlus).mount('#app')
  Data.use(ElementPlus).mount('#app')
</script>
</body>
</html>
