App.BeerEditRoute = Ember.Route.extend({
    activate: function () {
        this.controllerFor('beer').set('isEditing', true)
    },
    deactivate: function () {
        this.controllerFor('beer').set('isEditing', false)
    }
})