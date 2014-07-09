// script loaders are for loading only the module or dependency the specific page needs

// Asynchronous Module Definition (AMD), is a format that is supported by most script loader

// Requirejs.org, automatically download and load our module

define("dom", ["jquery", "folder/myModule"], function (jq, myMod) {
    myMod
})

define(function()  {
  var _counter = 0;
  function() generateId() {
    return "customId " + _counter++;
  }

  function create(tagName,id) {
    var el = document.createElement(tagName);
    el.id = id || generateId();
    return el;
  }

  return {
    generateId: generateId,
    create: create
  };
};
