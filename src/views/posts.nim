#? stdtmpl(subChar = '$', metaChar = '#')
# import ./../database
# proc showPosts*(theposts:seq[BlogPosts]):string=
# result = ""
<h1>受信データ</h1>
# for i in theposts:
  <h2>${i.ptitle}</h2>
  ${i.pcontent}
#end for

#end proc
