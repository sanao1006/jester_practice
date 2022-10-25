import karax/[karaxdsl,vdom]
import ./../database
proc showPosts*(theposts:seq[BlogPosts]):string=
  let vnode = buildHtml(tdiv):
    h1:text "受信データ"
    for i in theposts:
      tdiv:
        h2:text $i.ptitle
        p:text $i.pcontent
  return $vnode
