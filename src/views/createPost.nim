import karax/[karaxdsl,vdom]
proc createPost*():string=
  let vnode = buildHtml(tdiv):
    form(action="createPost",`method`="POST"):
        label:text "Title"
        input(type="text",name="title")
        textarea(name="content",placeholder="honbun")
        button(type="submit"):text "投稿"
  return $vnode
