#? stdtmpl(subChar = '$', metaChar = '#')
# 
# proc createPost*():string=
# result = ""
<form action="createPost" method="POST">
<label>Title</label>
<input type="text" name="title">
<textarea name="content" placeholder="honbun"></textarea>
<button type="submit">投稿</button>
</form>
# end proc