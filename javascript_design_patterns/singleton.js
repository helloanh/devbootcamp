// The singleton pattern can be a bit confusing
// It looks alot like the module pattern
//

// The purpose of a module: to separate units of code
// The purpose of a singleton: to ensure a class only have one instance, and to provide a global point of access to it
//but in JS, we dont have class, so replace "class" with "object"

//

var dom = (function() {
  var _counter = 0;
  var instance;
  function generateId() {
    return "customId" + _counter++;

  }

  function create(tagName, id) {
    var el = document.createElement(tagName);
    el.id = id || generateId();
    return el;
  }

  function createInstance() {
    return {
      generateId: generateId,
      create: create
    };
  }

  return {
    getInstance: function(){
      return instance || (instance = createInstance());
    }
  }
} ());

// singletons, difficult to test
// if you need the singleton, chances are, you need to reevaluate your code.  they might be too coupled