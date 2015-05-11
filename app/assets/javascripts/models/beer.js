App.Beer = DS.Model.extend({
    name: DS.attr('string'),
    beerType: DS.attr('string'),
    notes: DS.attr('string')
});

App.Beer.reopenClass({
    valid: function (fields) {
        return fields.name && fields.name.length > 0;
    }
});