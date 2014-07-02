# Anagram Server 1 The Basics

## Learning Competencies

* map the flow of data through a web application
* recognize the five HTTP methods (GET, POST, DELETE, PUT, PATCH)
* see implementation of MVC on the web.
* use important unix contextual tools (e.g. `wc`, `cat`, `grep`)
* use the database to verify changes made by the framework
* use `rake` to generate models, migrations, and to perform migration

## Summary

We're going to write a simple web application that accepts a word via an HTML
form and returns a list of anagrams.  This will be our first database-backed
web application.

## Releases

### Release 0: Create Models &amp; Migrations

The source for your application is located in the `anagrams_1` directory in the source directory.

We need to store the dictionary of words from which to construct
anagrams in the database.  We'll do it with a `words` table.

That means we'll need a `Word` model and a `create_words` migration.  You can
generate them by running the following from the command line inside the
"application root" (`source`) directory:

```text
$ rake generate:model NAME=Word
$ rake generate:migration NAME=create_words
```

These are custom rake tasks.  Look in the `Rakefile` to see how they work, if you're curious.

Fill out your `...create_words.rb` migration located in `db/migrate`.  You may
want to consult the ActiveRecord [create_table][] documentation.  Be sure to
execute `rake db:migrate` to put your migration into the database.

Once you are **sure** that your database has been created and your `words`
table, proceed.  Remember you can use Postgres to explore the database and make
sure your words were correctly imported.  If you did something wrong you can
use Postgres to wipe out the contents of the table.  While frameworks such as
Sinatra and Rails do a great job at taking this burden away from developers,
**you will be expected** to know how to insert a row, remove a row, clear out a
table in job interviews as well as in a development career.  Keep these skills
fresh!

### Release 1: Import a Dictionary

OS X comes with its own big-ass&trade; dictionary.  Try running this from the
command line:

```text
$ cat /usr/share/dict/words # outputs the contents of the file to STDOUT
$ wc -w /usr/share/dict/words # counts the number of words in the file
```

Copy `/usr/share/dict/words` into a (new!) directory in your application
directory called `db/fixtures`.  Edit `db/seeds.rb` to read the dictionary file
in and create one entry in the `words` table per word in the file.

We're copying the file into our application directory because in the world
where we deploy the application to a server or someone else installs the
application on their computer we want each instance to have the same
dictionary, not whatever dictionary happens to be on the machine.  By
convention many Rails developers store invariant data that are used to populate
the database in `db/fixtures`.

### Release 2: Build The Form

Before we dive into constructing anagrams, let's get the form working.  Start
the application by running:

```text
$ shotgun config.ru
```
then visit [http://localhost:9393/chicken](http://localhost:9393/chicken).  You should see something like this:

<p style="text-align: center">
<img src="http://f.cl.ly/items/0D1b3q1E1q3R0y3x461s/Screen%20Shot%202013-02-18%20at%209.15.07%20AM.png">
</p>

Look at `app/controllers/index.rb` to see how the URL parameter is passed into
your web application.  Does this make sense to you?  If not, find another
student or staff to help you understand &mdash; this is the **core** type of
interaction between a user's browser and your web application.

Now edit `app/views/index.erb` to make it look like you want.  Feel free to add
your own CSS, remove debugging information, etc.  But make sure you understand
the flow of data from the browser to the server and back to the browser again.

### Release 4: Define a `Word#anagrams` Method

Define a method on your `Word` model like this:

```ruby
class Word < ActiveRecord::Base
  ...
  # Returns an Array of Word objects which represent anagrams of this word
  # This can and should make calls to the database
  # Try to do it in as few calls as possible, without loading every word into memory.  If you can't, that's ok.
  def anagrams
  end
  ...
end
```

You should re-use some of the logic from Anagrams 2: Generating Anagrams.  You
might think this means "re-use the `anagrams_for` method we defined there."
That's not what we mean; we mean re-use the core logic.  It should be written
in an object-oriented style and return an `Array` of `Words`, not `Strings`.

### Release 5: Display Anagrams

Edit `app/controllers/index.rb` so that then you visit
`http://localhost:9393/racecar`, `http://localhost:9393/apples`, etc. it
displays a nice list of anagrams for the given word as encoded in the URL.

It should still render the same form, so your users can ask for a new set of
anagrams.  Remember: DRY!  Small fragments of view code that are to be re-used
between views are called **partials**.

See [How do I render partials?][sinatra_partials] in
Sinatra's FAQ.

## Resources

* [Active Record: Create Table][create_table]
* [Sinatra FAQ][sinatra_partials]

[create_table]: http://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-create_table
[sinatra_partials]: http://www.sinatrarb.com/faq.html#partials
