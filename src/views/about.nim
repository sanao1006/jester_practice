import karax / [karaxdsl, vdom]
proc createAbout*(body:string):string=
  let vnode = buildHtml(tdiv):
    h1:text "about"
    tdiv:
      verbatim(body)
  return $vnode