App.BeersController = Ember.ArrayController.extend({
    sortProperties: ['name'],
    beers: function () {
        return this.get('search') ? this.get('searchedBeers') : this
    }.property('search', 'searchedBeers'),

    searchedBeers: function () {
        var search = this.get('search').toLowerCase();
        return this.filter(function (beer) {
            return beer.get('name').toLowerCase().indexOf(search) != -1
        })
    }.property('search', 'this.@each.name')
})