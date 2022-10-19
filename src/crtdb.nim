import database


var db = newDB()
db.setupDB()
echo "データベースを作成しました"
db.closeDB()