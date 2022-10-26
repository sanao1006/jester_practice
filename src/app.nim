import jester
import ./views/createPost,./views/home,./views/posts,./views/about
import ./database

let db = newDB()

routes:
  get "/":
    resp(renderMain())
  get "/about":
    var data:BlogPosts
    let alltheposts = db.getPosts(@[data.ptitle,data.pcontent])
    resp (createAbout(showPosts(alltheposts)))
  get "/createPost":
    resp(createPost())
  post "/createPost":
    let allposts = BlogPosts(
      ptitle: @"title" ,
      pcontent: @"content"
    )
    db.createPost(allposts)
    redirect("/")
  post "/delete/@id":
    db.deletePost(@"id")
    redirect("/about")

runForever()