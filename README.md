#devbootcamp
a repo for all Dev Bootcamp exercises


### About Dev Bootcamp
DBC is a 9 weeks intensive coding program that focuses on turning students into web developers using the Rails framework. Students spent 1000+ hours on Ruby fundamentals, relational database concepts, and front-end development.


### Curriculum Emphasis:

  ● Object Oriented Design, Model View Controller, RESTful patterns <br>
  ● Ruby on Rails, Sinatra, ActiveRecord, MVC JavaScript, HTML5/ CSS3, jQuery, AJAX <br>
  ● Object-relational databases PostgreSQL and SQLite3, as well as Firebase <br>
  ● Test-driven development and behavior driven development using RSpec and Jasmine <br>
  ● Git version control and Heroku deployment

### Table of Contents

```
.
├── README.md
├── data_base_design
│   ├── family_tree_database_design
│   │   ├── README.md
│   │   └── source
│   │       └── optimized_family_tree.md
│   ├── intro_to_sqlite_drill.md
│   ├── many_to_many_schema.md
│   └── twitter_one_to_many_db.md
├── data_structures_notes
│   ├── intro_to_data_struc.md
│   ├── intro_to_linked_list.md
│   └── list_as_abstract_data_type.md
├── javascript_challenges
│   ├── javascript-ajax-and-jquery-challenge
│   │   ├── README.md
│   │   └── source
│   │       └── simon-says
│   │           ├── Gemfile
│   │           ├── Gemfile.lock
│   │           ├── Rakefile
│   │           ├── app
│   │           │   ├── controllers
│   │           │   │   └── index.rb
│   │           │   ├── helpers
│   │           │   │   └── README
│   │           │   ├── models
│   │           │   │   └── README
│   │           │   └── views
│   │           │       ├── index.erb
│   │           │       └── layout.erb
│   │           ├── config
│   │           │   ├── database.rb
│   │           │   └── environment.rb
│   │           ├── config.ru
│   │           ├── db
│   │           │   └── seeds.rb
│   │           ├── public
│   │           │   ├── css
│   │           │   │   ├── application.css
│   │           │   │   └── normalize.css
│   │           │   ├── favicon.ico
│   │           │   └── js
│   │           │       └── application.js
│   │           └── spec
│   │               └── spec_helper.rb
│   ├── javascript_design_patterns
│   │   ├── MODULE2.js
│   │   │   ├── AMD_format.js
│   │   │   └── lesson09.js
│   │   ├── advance_decorator_pattern.js
│   │   ├── command_pattern.js
│   │   ├── create_objects_constructor_pattern.js
│   │   ├── create_objects_with_object_create.js
│   │   ├── creating_objects_with_literals.js
│   │   ├── decorator_pattern.js
│   │   ├── facade_pattern.js
│   │   ├── factory_pattern.js
│   │   ├── inheritance_pattern.js
│   │   ├── mixins1.js
│   │   ├── modules.js
│   │   ├── observer_pattern.js
│   │   └── singleton.js
│   └── js_coding_exercises
│       ├── calculations.js
│       ├── dev_doc_form_js_html_practice.md
│       ├── gradebook.js
│       └── manipulate_js_objects.js
├── ruby_apps_porfolio
│   ├── craiglist_jr
│   │   ├── Gemfile
│   │   ├── Gemfile.lock
│   │   ├── README.md
│   │   ├── Rakefile
│   │   ├── app
│   │   │   ├── controllers
│   │   │   │   └── index.rb
│   │   │   ├── helpers
│   │   │   │   └── README
│   │   │   ├── models
│   │   │   │   ├── README
│   │   │   │   ├── category.rb
│   │   │   │   └── post.rb
│   │   │   └── views
│   │   │       ├── category.erb
│   │   │       ├── edit_post.erb
│   │   │       ├── index.erb
│   │   │       ├── layout.erb
│   │   │       ├── new_post.erb
│   │   │       ├── post.erb
│   │   │       └── secret_code.erb
│   │   ├── config
│   │   │   ├── database.rb
│   │   │   └── environment.rb
│   │   ├── config.ru
│   │   ├── db
│   │   │   ├── migrate
│   │   │   │   ├── 20140422102947_create_categories.rb
│   │   │   │   └── 20140422102954_create_posts.rb
│   │   │   └── seeds.rb
│   │   ├── public
│   │   │   ├── css
│   │   │   │   ├── application.css
│   │   │   │   ├── bootstrap.css
│   │   │   │   ├── normalize.css
│   │   │   │   └── scrolling-nav.css
│   │   │   ├── favicon.ico
│   │   │   └── js
│   │   │       ├── application.js
│   │   │       ├── bootstrap.js
│   │   │       ├── jquery-1.10.2.js
│   │   │       └── scrolling-nav.js
│   │   ├── sinatra_skeleton.zip
│   │   └── spec
│   │       ├── index_spec.rb
│   │       ├── model_spec.rb
│   │       └── spec_helper.rb
│   └── dbc_overflow
│       ├── DBC_OVERFLOW_NOTES.rb
│       ├── Gemfile
│       ├── Gemfile.lock
│       ├── Rakefile
│       ├── app
│       │   ├── assets
│       │   │   ├── images
│       │   │   │   └── rails.png
│       │   │   ├── javascripts
│       │   │   │   └── application.js
│       │   │   └── stylesheets
│       │   │       └── application.css
│       │   ├── controllers
│       │   │   └── application_controller.rb
│       │   ├── helpers
│       │   │   └── application_helper.rb
│       │   ├── mailers
│       │   ├── models
│       │   └── views
│       │       └── layouts
│       │           └── application.html.erb
│       ├── config
│       │   ├── application.rb
│       │   ├── boot.rb
│       │   ├── database.yml
│       │   ├── environment.rb
│       │   ├── environments
│       │   │   ├── development.rb
│       │   │   ├── production.rb
│       │   │   └── test.rb
│       │   ├── initializers
│       │   │   ├── backtrace_silencers.rb
│       │   │   ├── inflections.rb
│       │   │   ├── mime_types.rb
│       │   │   ├── secret_token.rb
│       │   │   ├── session_store.rb
│       │   │   └── wrap_parameters.rb
│       │   ├── locales
│       │   │   └── en.yml
│       │   └── routes.rb
│       ├── config.ru
│       ├── db
│       │   └── seeds.rb
│       ├── doc
│       │   └── README_FOR_APP
│       ├── lib
│       │   ├── assets
│       │   └── tasks
│       ├── log
│       ├── public
│       │   ├── 404.html
│       │   ├── 422.html
│       │   ├── 500.html
│       │   ├── favicon.ico
│       │   ├── index.html
│       │   └── robots.txt
│       ├── script
│       │   └── rails
│       ├── tmp
│       │   └── cache
│       │       └── assets
│       └── vendor
│           ├── assets
│           │   ├── javascripts
│           │   └── stylesheets
│           └── plugins
├── ruby_coding_exercises
│   ├── debugging_utility_drawer.rb
│   ├── fun_string_challenge.rb
│   ├── guess_game.rb
│   ├── linear_search
│   │   ├── README.md
│   │   └── source
│   │       └── linear_search.rb
│   ├── luhn_cc_validator.rb
│   ├── number-in-words-challenge
│   │   ├── README.md
│   │   └── source
│   │       └── number_in_words.rb
│   ├── password_validator.rb
│   ├── playlist_challenge.rb
│   ├── rb_blocks_procs_lambda
│   │   └── block.rb
│   ├── rpn_evaluator
│   │   ├── rpn_evaluator.rb
│   │   ├── test.rb
│   │   └── test_rpn_evaluator.rb
│   ├── student_class.rb
│   ├── super_fizzbuzz.rb
│   └── virus_predictor.rb
└── test_driven_development_practice
    ├── README.md
    ├── orange_tree_jasmine_testing
    │   ├── README.md
    │   └── source
    │       ├── SpecRunner.html
    │       ├── css
    │       │   ├── application.css
    │       │   └── normalize.css
    │       ├── images
    │       │   ├── big_tree.jpg
    │       │   ├── orange.gif
    │       │   ├── orangetree.jpg
    │       │   ├── small_tree.jpg
    │       │   ├── tree.jpeg
    │       │   └── tree_big.jpg
    │       ├── javascripts
    │       │   ├── mvc_js_notes.js
    │       │   ├── plain-old-js-objects.js
    │       │   ├── typed-objects.js
    │       │   ├── view.js
    │       │   └── view_testing_mvc.js
    │       ├── lib
    │       │   └── jasmine-2.0.0
    │       │       ├── boot.js
    │       │       ├── console.js
    │       │       ├── jasmine-html.js
    │       │       ├── jasmine.css
    │       │       ├── jasmine.js
    │       │       └── jasmine_favicon.png
    │       ├── orange.html
    │       └── spec
    │           └── javascripts
    │               ├── plain-old-js-objects-spec.js
    │               ├── typed-objects-spec.js
    │               └── view-spec.js
    └── team_ruby
        ├── lib
        │   └── team.rb
        └── spec
            └── team_spec.rb

88 directories, 161 files

```


<a href="http://devbootcamp.com/"> Visit DevBootcamp </a>
