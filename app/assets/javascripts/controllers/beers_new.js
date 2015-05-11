App.BeersNewController = Ember.Controller.extend({
    actions: {
        createBeer: function () {
            var self = this;
            var fields = this.get('fields');
            if (App.Beer.valid(fields)) {
                var beer = this.store.createRecord('beer', fields);
                beer.save().then(function(beer) {
                    self.transitionToRoute('beer', beer)
                });
            } else {
                this.set('showError', true);
            }
        }
    }
});