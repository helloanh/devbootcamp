### Solution for Challenge: SOLO CHALLENGE: Modeling a One to Many Database.


1) In your gist, explain (in a comment) the relationship between users and tweets.

This is a one to many relationship since one user can have many tweets.


Check out what data Twitter has for users and tweets:

[tutsplusplus_relational-databases-twitter](http://code.tutsplus.com/tutorials/relational-databases-for-dummies--net-30244)

[Twitter Developers Documentation](https://dev.twitter.com/docs)

Twiter User Table
+ user_id : primary key
+ user_image
+ first_name
+ last_name
+ username : twitter handle
+ email
+ created_at
+ updated_at

Tweet Table
+ tweet_id
+ user_id (foreign key)
+ tweet_text : actual tweet, limited to 140 characters
+ created_at
+ updated_at

Following Table
+ following_id
+ user_id (foreign key)

Votes Table
+ vote_id
+ user_id (foreign key)
+ tweet_id (foreign key)
+ created_at

2) Screenshot of Twitter schema design.
![Twitter Database Design](http://i.imgur.com/xYNBozF.png)

3) Create SQL statements to access your tables and return:

+ all the tweets for a certain user id
+ the tweets for a certain user id that were made after last Wednesday
+ all the tweets associated with a given user's twitter handle
+ the username associated with a given tweet id
+ bonus write up a couple more queries for your added bonus table

``` SQL
SELECT tweet_text FROM Users WHERE user_id = 'type user id here'

SELECT tweet_text, user_id FROM Users WHERE created_at >= '2014-02095 12:00:00'

SELECT tweet_text FROM Tweets JOIN Users ON (user_id = user_id)
  WHERE username = 'type username here'
  SELECT COUNT(tweet_id), username FROM Users

SELECT username FROM Users JOIN Tweet ON (user_id = user_id)
WHERE tweet_id = 'type tweet id here'

SELECT MIN(tweet_id) FROM Tweets

SELECT MAX(user_id) FROM Users
```

4) Review. Take a look at other students' solutions. Are there any schemas that look different from yours? Which do you think is correct? If you made a mistake, take the time to understand where you were confused. Update your schema. If you find a schema that you think is a little off, make a comment on the gist. Be specific, actionable, and kind. Sharing is caring!


  I decided to place the following attributes in another table since placing it under the Users table will create repeats for username name and following_id.  I have trouble with the SQL statements (I hope the syntax is right).  While I googled SQL statements, I found really cool new functions such as MIN() and MAX(), so I will experiment with that.  This table should not be too difficult to build with sqlite, but I do notice that updating the extra colunns the second time is a pain, so I hope we will work with actually mySQL or SQL to fix this.

5) Reflect. Did you learn anything interesting in this process? SQLdesigner tricks? Markdown tricks? Take a moment to reflect on your learning and share it with other students.

I think there are many ways to draw this table.  I am missing a few attributes but I think the main relationship is there.  I am curious to what happen when the tweets reaches a large number of user.  How can the database administrator fix it or optimize the table for faster performance.
