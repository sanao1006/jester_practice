import karax/[karaxdsl,vdom]
proc renderMain*(body:string):string=
  let vnode = buildHtml(tdiv):
      ul:
          li:a(href="/about"):text "About"
          li:a(href="/createPost"):text "Post"
      verbatim(body)
  return $vnode
