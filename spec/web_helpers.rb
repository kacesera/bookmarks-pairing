def test_connection
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec ("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
  connection.exec ("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
  connection.exec ("INSERT INTO bookmarks (url) VALUES ('http://www.ahotdogisnotasandwich.com');")
end