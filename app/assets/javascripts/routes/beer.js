App.BeerRoute = Ember.Route.extend({
    model: function (params) {
        return this.store.find('beer', params.id)
    }
});