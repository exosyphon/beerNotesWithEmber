App.BeerEditController = Ember.ObjectController.extend({

    showUnsavedMessage: function() {
        return this.get('isDirty') && !this.get('isSaving')
    }.property('isDirty', 'isSaving'),

    actions: {
        saveChanges: function () {
            var self = this;
            this.get('model').save().then(function () {
                self.transitionToRoute('beer');
            })
        },

        cancel: function () {
            this.get('model').rollback();
            this.transitionToRoute('beer');
        },

        delete: function() {
            var self = this;
            this.get('model').destroyRecord().then(function() {
                self.transitionToRoute('beers');
            });
        }
    }
});