$('input[type=radio][name=select]').change(function() {
    $('#form_linear').toggle(
        $('input[type=radio][name=select]:checked').val() == 1 ? true : false);
    $('#form_quadratic').toggle(
        $('input[type=radio][name=select]:checked').val() == 0 ? true : false);
    })
    .change();

jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});

$( "#form_linear" ).validate({
  rules: {
    first_coeflin: {
      required: true,
      digits: true
    },
    second_coeflin: {
      required: true,
      digits: true
    }
  }
})

$( "#form_quadratic" ).validate({
  rules: {
    first_coefqua: {
      required: true,
      digits: true
    },
    second_coefqua: {
      required: true,
      digits: true
    },
    third_coefqua: {
      required: true,
      digits: true
    }
  }
});

$("#form_linear").submit(function() {
    $.post({
      url: "/",
      dataType: 'json',
      data: {
        firstlin: $("#fieldfirstlin").val(),
        secondlin: $("#fieldsecondlin").val(),
        check: "linear"
      },
      success: function(data) { showLinearAnswer(data) }
    });
    return false;
});

$("#form_quadratic").submit(function() {
    $.post({
      url: "/",
      dataType: 'json',
      data: {
        firstqua: $("#fieldfirstqua").val(),
        secondqua: $("#fieldsecondqua").val(),
        thirdqua: $("#fieldthirdqua").val(),
        check: "quadratic"
      },
      success: function(data) { showQuadraticAnswer(data) }
    });
    return false;


});

function showLinearAnswer(answer) {
    var json={
      "answer_for_linear" : answer['result']
    };

    for(key in json)
    {
      if(json.hasOwnProperty(key))
        $('input[name='+key+']').val(json[key]);
    }
}

function showQuadraticAnswer(answer) {
    var json={
      "answer_for_quadratic" : answer['result']
    };

    for(key in json)
    {
      if(json.hasOwnProperty(key))
        $('input[name='+key+']').val(json[key]);
    }
}
