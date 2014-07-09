# Family Tree Database Design 
 
##Learning Competencies 

* Design database schema from problem data
* Model relationships in a relational database (one-to-one, one-to-many, many-to-many)

##Summary 

 Family Trees can be implemented with a database!

Requirements:

1. People have a first name, middle name, birth (last) name, legal (last) name, gender, and birth date
2. Come up with a way to relate people.  You should be storing the data in a way that permits constructing a family tree, and also answering questions about a family tree, e.g., "Who is this person's parents?", "Who are Steve's paternal ancestors?", "Who are Dora's descendants?", "Who are Steve's cousins?", "Who are Lila's granddaughters?", etc.

##Releases

###Release 0 : Design the schema - Optimize for Memory Requirements

Design a schema satisfying the requirements above.  What is the simplest schema design (ie takes the least amount of columns and tables) that can satisfy a family tree?  

HINT:  Use the power of inference!

###Release 1 : Design the schema - Optimize for Speed and Flexibility

What happens if relationships like sister, brother, step-sister, cousin are also needed?  Can your original schema display this? Can you optimize your schema so you can quickly access these relations and allow for others? (Hint: this might need more tables).

Add your new schema and screen shot to your gist.  
 


Use [SQL Designer](https://socrates.devbootcamp.com/sql.html) to create your schema.  When you are done, save the XML of your schema and copy it into the source file `family.md`. Then, take a screenshot of your final schema design, and upload it using a free image-upload service like [Min.us](http://minus.com).  Paste the URL of the screenshot into your source file (before your XML code). 

<!-- ##Optimize Your Learning  -->

##Resources

* [SQL Designer](https://socrates.devbootcamp.com/sql.html)