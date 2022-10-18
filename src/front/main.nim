include karax/prelude
import sugar
import karax/[kdom]
import jester/[patterns]
# proc create*():VNode =
#     result = buildView(html):
#         text "yes"
#         form(`method`="POST",action="confirm"):
#             h1(text "kf")
#             input(`type`="text",name="unchi",value=""):text "lk"
#             button(`type`="submit"):text "送信"
let places = @["dsd","rre"]
proc render*(): VNode =
  let vnode = buildHtml(tdiv(class = "mt-3")):
    h1: text "My Web Page"
    p: text "Hello world"
    ul:
      for place in places:
        li: text place
    dl:
      dt: text "Can I use Karax for client side single page apps?"
      dd: text "Yes"

      dt: text "Can I use Karax for server side HTML rendering?"
      dd: text "Yes"
  result = vnode
setRenderer render
