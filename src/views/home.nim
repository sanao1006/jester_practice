#? stdtmpl(subChar = '$', metaChar = '#')
#
#proc renderMain*(body:string):string=
#  result = ""
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <ul>
   <li><a href="/about">About</a></li>
   <li><a href="/createPost">Post</a></li>
   </ul>
   ${body}
</body>
</html>
# end proc