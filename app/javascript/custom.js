$(document).on('turbolinks:load', function() {
  $('.autor-select').selectize({
    create: false,
    sortField: 'text',
    searchField: ['text', 'value'],
    placeholder: 'Pesquisar autor',
    allowEmptyOption: true,
    load: function(query, callback) {
      if (!query.length) return callback();
      $.ajax({
        url: '/autores/search', // Substitua pelo caminho correto do endpoint de pesquisa
        type: 'GET',
        dataType: 'json',
        data: {
          query: query
        },
        error: function() {
          callback();
        },
        success: function(res) {
          callback(res.data);
        }
      });
    }
  });
});