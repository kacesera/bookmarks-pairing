# Bookmarks App

## User Stories

As a user,
To see the pages I’ve saved,
I’d like to see a list of bookmarks.

Object | Behaviour
------ | ---------
pages | save
bookmarks | list, show

![diagram for first user story](https://i.imgur.com/OCZvWaH.png)

As a user,
To declutter my browser,
I'd would be like to be able to save pages I want to go back to

## Setting up your database

**Create Bookmark Manager DB**

1. Connect to ```psql``` in your terminal.
2. Create the database using the psql command ```CREATE DATABASE bookmark_manager;```
3. Connect to the database using the pqsl command ```\c bookmark_manager;```
4. Run the query we have saved in the file ```01_create_bookmarks_table.sql```

**Create Bookmark Manager TEST DB**

Do the above again, with the following changes:

- Step 2: ```CREATE DATABASE bookmark_manager_test;```
- Step 3: ``` \c bookmark_manager_test;```

