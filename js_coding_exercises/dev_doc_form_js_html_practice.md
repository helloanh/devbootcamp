#### Sample Entry Screenshot:
<a href="http://imgur.com/ycZ3xG9"><img src="http://i.imgur.com/ycZ3xG9.png" /></a>

### Test out the form here:
http://anhkim.me/portfolio/DevDoc/devdoc.html

### Reflection:
In this assignment, I learn how to make a form with several button types.  I debate about whether to dive into bootstrap or start from scratch, since it seems tedious to code something that could be done with a template.  I doubt, as web developers, we will spend this much time fixating on forms.  However, this is good practice so I did do the hand-coding route with some help from Lynda's HTML tutorials on form for help.  The js file is not necessary, but allow us to see some interactivity with the form.  Working on the form helps me raise some questions such as: How do we store this?  Were does this go to?  How to process forms such as password and other sensitive information such as bank account, etc?

This is more of database/back-end stuff, and to be honest--it is much  more interesting and complex process itself.  I admit, I don't fully understand the javascript stuff (but for this exercise it is not neccesary), but I hope it will make more sense in the future.

### My code:

```html
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>
        DBC Patient Medical Form
    </title>
    <link rel="stylesheet" type="text/css" href="forms.css" />
    <script type="text/javascript" src="forms.js"></script>
</head>
<body>

<div id="outer">
<div id="form">
<h1>
    DBC Patient Medical Form
</h1>

<form id="f1" onsubmit="return display()" method="post">
    <p> First Name: <input type="text" name="First Name" autofocus /> </p>
    <p> Last Name: <input type="text" name="Last Name" autofocus /> </p>
    <p> Phone Number: <input type="telephone" name="Phone Number" autofocus /> </p>
    <p> Email: <input type="email" name="Email" autofocus /> </p>
    <p> Date of Birth: <input type="text" name="Date of Birth" autofocus /> </p>

    <p> Symptoms: </p>
        <ul>
            <li>headaches <input type="checkbox" name="headaches" /> </li>
            <li>nausea <input type="checkbox" name="nausea" checked />  </li>
            <li>stomach pain <input type="checkbox" name="stomach Pain" /> </li>
            <li>drowsiness <input type="checkbox" name="drowsiness" /> </li>
        </ul>

    <p> Gender </p>
    <p> Male: <input type="radio" name="Gender" value="Male" /> &nbsp;
        Female: <input type="radio" name="Gender" value="Female" checked />
        Other: <input type="radio" name="Gender" value="Other" /> &nbsp;
    </p>

    <p> Average Amount of Sleep Per Day: </p>
    <p> 0-3 hrs: <input type="radio" name="Amount of Sleep" value="0-3 hrs" /> &nbsp;
        3-6 hrs: <input type="radio" name="Amount of Sleep" value="3-6 hrs" checked />
        6-9 hrs: <input type="radio" name="Amount of Sleep" value="6-9 hrs" /> &nbsp;
    </p>

    <p> How are you feeling today? </p>
        <select name="Mood">
          <option selected> Excellent and full of energy!
          <option> Doing alright.
          <option> So-so.
          <option> Burned out.
          <option> Zzzzzzzz. </option>
        </select>

      <p> What did you have for dinner? </p>
        <select name="Dinner">
          <option selected> Cereal.
          <option> Salad.
          <option> A four-course meal.
          <option> Fast food
          <option> Nothing. </option>
        </select>
    <p> <input type="submit" name="True" value="Submit Form"/> </p>
</form>

</div> <!-- form -->

<div id="results">
    <p> Your Submitted Form </p>
</div> <!-- results -->
</div> <!-- outer -->

</body>
</html>
```