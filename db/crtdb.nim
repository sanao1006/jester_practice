import database
import db_sqlite
proc showdb*(database:DataBase)=
    database.db.exec(sql"SELECT * FROM BlogPosts;")
var db = newDB()
db.setupDB()
echo "データベースを作成しました"
db.closeDB()