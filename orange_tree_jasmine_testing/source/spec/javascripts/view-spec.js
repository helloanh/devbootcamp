// we've written an example test for your DOM interactive JavaScript. The html
// elements are designed to mock orange.html, however the objects and functions
// are simply suggestions. You will need to change the testing setup/assertion to
// match your code's architecture.
describe ("View", function(){
  // we're catching the globally defined variable at line 12 so our tests have
  // access to the mockGrove variable.
  var mockGrove;

  beforeEach(function() {
    // this create a fake grove and appends it to the testing DOM. Where is
    // the testing DOM? How does it relate to orange.html?
    mockGrove = document.createElement('div')
    mockGrove.className = "grove"
    document.body.appendChild(mockGrove)
  })

  afterEach(function() {
    //deletes the mockGrove object so it doesn't interfere with other tests.
    document.removeChild(mockGrove)
  })

  describe("renderTree", function() {
    var mockTemplate;

    beforeEach(function() {
      //creates a fake orange tree template div
      mockTemplate = document.createElement('div')
      mockTemplate.id = "orange-tree-template"

      // create a fake orange tree div. It's a barebones version of the tree, with
      // no p tags or buttons. You may need to add more complexity to it for future tests
      var orangeTree = document.createElement('div')
      orangeTree.className = "orange-tree"

      // appends the tree div to the template div, just like in orange.html
      mockTemplate.appendChild(orangeTree)
      // appends the template div to the document, in this case
      document.body.appendChild(mockTemplate)
    })

    afterEach(function() {
      //clean up after test.
      document.removeChild(mockTemplate)
    })

    xit("should render a tree in the grove", function(){
      var tree= new Tree()
      View.renderTree(tree)
      expect( mockGrove.childElementCount ).toEqual(1);
    });
  })

});
