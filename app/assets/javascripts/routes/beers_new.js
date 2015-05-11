App.BeersNewRoute = Ember.Route.extend({
    setupController: function (controller) {
        controller.set('showError', false);
        controller.set('fields', {});
    }
});