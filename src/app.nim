import jester
import ./views/createPost,./views/home,./views/posts,./views/about
import ./database

let db = newDB()

routes:
  get "/":
    var data:BlogPosts
    let alltheposts = db.getPosts(@[data.ptitle,data.pcontent])
    resp(renderMain(showPosts(alltheposts)))
  get "/about":
    resp renderMain(createAbout())
  get "/createPost":
    resp(renderMain(createPost()))
  post "/createPost":
    let allposts = BlogPosts(
      ptitle: @"title" ,
      pcontent: @"content"
    )
    db.createPost(allposts)
    redirect("/createPost")
  post "/deletePost/@title":
    db.deletePost()

runForever()