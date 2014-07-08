// Write two functions to add and remove event handlers, using the facade pattern

function addEvent(el, ev, fn){
  if (el.addEventListener) {
    el.addEventListener(ev, fn, false);
  } else if (el.attachEvent) {
    el.attachEvent("on" + ev, fn);
  } else {
    el["on" + ev] = fn;
  }
}

function removeEvent(el,ev,fn) {
  if (el.removeEventListener) {
    el.removEventListener(ev, fn, false);
  } else if (el.detachEvent) {
    el.detachEvent("on" + ev, fn);
  } else {
    el["on" + ev] = null;
  }
}