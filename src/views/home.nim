import karax/[karaxdsl,vdom]
proc renderMain*():string=
  let vnode = buildHtml(tdiv):
      ul:
          li:a(href="/about"):text "About"
          li:a(href="/createPost"):text "Post"

      
  return $vnode
