// JS lacks true privacy,
// the notion of privacy is important in OOP

var dom = {
  _counter : 0,
  generateId: function() {
    return "customId " + this._counter++;

  },
  create: function(tagName,id) {
    var el = document.createElement(tagName);
    el.id = id || this.generateId();
    if (id) {
      el.id = id;
    }
    return el;
  }
};

// in brower console
var divEl = dom.create("div");
divEl.id   //"customId 0"

// but there is a problem,
// the dom._couunter is open to the public
// we can set counter property to a string, and all subsequent ids will be the same "customId IamHacked"
dom._counter = "IamHacked";

// Even though we can prepended the property with the underscore, a convention to signify the property or method is private, it can still be modified

// we need some way to protect the counter property
// we can emulator functional scope and closure

//using the module pattern to create the dom utility
// the basic module pattern uses an immediately invoked function and returns an object
// allows us to use the local scope of the immediately function to emulate privacy
//whatever we return is publicly accessbile outside of the module

//counter needs to be a variable instead of a property
//generateId needs to get rid of "this" for counter

var dom = ( function(jq) {
  var _counter = 0;

  function generateId() {
    return "customID" + _counter++;
  }

  function create(tagName, id) {
    var el = document.createElement(tagName);
      el.id = id || this.generateId();
      return el;
  }

  return {
    generateId: generateId,
    create: create
  }

}(jQuery));

// now we cannot call dom._create, since it is undefined in the browser

// module is simple but powerful, it gives us the flexibility and control in our own code

