// defines the object that we call the "subject"
// which notifies other object when its state changes
// this basically describe events
// js and jquery are heavily event-driven
// without the Observer Pattern, we don't have events

// the one predominately used in the DOM is the publish-subscribe


define(function() {

  var subscribers = {};

  function subscribe(type, fn) {
    if (!subscribers[type]) {
      substribers[type] = [];
    }

    if (subscribers[type].indexOf(fn) == -1 ) {
      substribers[type].push(fn);
    }
  }

  function unsubstribe(type, fn) {
    var listeners = subscribers[type];

    if (!listeners) {
      return;
    }

    var index = listeners.indexOf(fn);

    if (index > -1) {
      listeners.splice(index, 1);
    }

  }

  function publish(type, evtObj) {
    if (!substribers[type]) {
      return;
    }

    if (!evtObj.type) {
      evtObj.type = type;
    }

    var listeners = substribers[type];

    for (var ii = 0, ll = listeners.length; ii < ll; ii++) {
      listeners[ii](evtObj);
    }

  }

  return {
    subscribe: substribe,
    unsubscribe: unsubstribe,
    publish: publish
  };
})


// lesson14.js

require(["eventmanager", function(evtman) {
  function foo(evt) {
    console.log(event.message);
  }

  evtman.subscribe("test/foo", foo);
  evntman.publish("test/foo", {message: "Hellow this is a custom event" });
  evtnman.unsubstribe("test/foo", foo);

  evtman.publish("test/foo", {message: "this should not be seen"});
}]);