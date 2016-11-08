<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Universities</title>
</head>
<style>
   ul li {
       display: inline-block;
       float: left;
       margin-left: 10px;
   }

   #fill {
       width: 20%;
   }

   input[type=text] {
       margin-bottom: 10px;
       padding: 4px;
       float: left;
       width: 80%;
   }
</style>
<body>
<header>
    <h1>Menu<hr></h1>
    <form action="" method="get">
        <ul type="none">
            <li><input type="submit" name="fill" value="Fill tables"></li>
            <li><input type="submit" name="university" value="Universities"></li>
            <li><input type="submit" name="department" value="Departments"></li>
            <li><input type="submit" name="student" value="Students"></li>
            <li><input type="submit" name="homework" value="Homeworks"></li>
        </ul>
        <br><br><hr>
    </form>
</header>