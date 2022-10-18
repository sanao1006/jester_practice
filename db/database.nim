import db_sqlite

type 
    DataBase* = ref object
      db* : DbConn
    BlogPosts* = ref object
      ptitle : string
      pcontent : string

proc newDB*(filename="blog.nim"):DataBase=
    new result
    result.db = open(filename,"","","")

proc closeDB*(database:DataBase)=
    database.db.close()

proc setupDB*(database:DataBase)=
    database.db.exec(sql """
    CREATE TABLE IF NOT EXISTS BlogPosts(
        ptitle text,
        pcontents text
    )
    """)

proc createPost*(database:DataBase,blogPost:BlogPosts)=
    database.db.exec(sql"INSERT INTO BlogPosts VALUES(?,?);",blogPost.ptitle,blogPost.pcontent)
