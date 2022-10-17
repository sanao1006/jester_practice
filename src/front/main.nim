include karax/prelude

proc create*():VNode =
    result = buildHtml(tdiv):
        text "yes"
        form(`method`="POST",action="./../jestert.nim"):
            h1(text "kf")
            input(`type`="text",name="unchi"):text "lk"
            button(`type`="submit"):text "送信"
setRenderer create