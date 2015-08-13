App.Router.map(function () {
    this.resource('beers', { path: '/' }, function () {
        this.route('new');
        this.resource('beer', { path: 'beers/:id' }, function () {
            this.route('edit');
        });
    });
});