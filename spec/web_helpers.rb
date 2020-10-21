def test_connection
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec ("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers Academy');")
  connection.exec ("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google');")
  connection.exec ("INSERT INTO bookmarks (url, title) VALUES ('http://www.ahotdogisnotasandwich.com', 'A Hotdog is Not A Sandwich');")
end