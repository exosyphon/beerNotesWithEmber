App.BeerController = Ember.ObjectController.extend({
    isEditing: false,

    actions: {
        saveChanges: function () {
            this.get('model').save();
        }
    }
});
