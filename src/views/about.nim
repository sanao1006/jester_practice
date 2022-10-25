import karax / [karaxdsl, vdom]
proc createAbout*():string=
  let vnode = buildHtml(tdiv):
    h1:text "about"
  return $vnode