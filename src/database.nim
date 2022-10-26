import 
    db_sqlite,
    std/strutils
type 
    DataBase* = ref object
      db : DbConn
    BlogPosts* = object
      pid* : int
      ptitle* : string
      pcontent* : string

proc newDB*(filename="blog.db"):DataBase=
    new result
    result.db = open(filename,"","","")

proc closeDB*(database:DataBase)=
    database.db.close()

proc setupDB*(database:DataBase)=
    database.db.exec(sql """
    
    CREATE TABLE IF NOT EXISTS BlogPosts(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        ptitle text,
        pcontents text
    )
    """)

proc createPost*(database:DataBase,blogPost:BlogPosts)=
    database.db.exec(sql"INSERT INTO BlogPosts(ptitle,pcontents) VALUES(?,?);",blogPost.ptitle,blogPost.pcontent)

proc deletePost*(database:Database,pid:string)=
    database.db.exec(sql"DELETE FROM BlogPosts where id = ?",$pid)

proc getPosts*(database:DataBase,tpost:seq[string]):seq[BlogPosts]=
    let ps = database.db.getAllRows(sql"SELECT id,ptitle,pcontents FROM BlogPosts",tpost)
    for item in ps:result.add(BlogPosts(pid:parseInt(item[0]),ptitle:item[1],pcontent:item[2]))