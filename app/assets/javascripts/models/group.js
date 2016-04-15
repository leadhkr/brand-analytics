app.groups.model = {
  all: [],
  new: (function(){
    var counter = 0
    var group = function Group(name, street_address, city, state, zip_code, domain){
      this.name = name
      this.street_address = street_address
      this.city = city
      this.state = state
      this.zip_code = zip_code
      this.domain = domain
      var that = this

      function initialize(){
        counter++;
        that.id = counter;
        app.groups.model.all.push(that);
      };
      initialize();
    }
    return group;
  }()),

  findBy: function findBy(attrHash) {
    var key = Object.keys(attrHash)[0]
    var value = attrHash[key]
    return $.grep(app.groups.model.all, function(group){
      return group[key] == value;
    });
  }
}
