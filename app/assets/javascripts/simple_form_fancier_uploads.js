$(document).on('ready page:load', function() {
  $('input[type=file]').change(function() {
    previewImage(this);
  });

  var previewImage = function(input) {
    var files = input.files;
    if (files && files[0]) {
      var image = files[0];

      var fileReader = new FileReader();
      fileReader.onload = function(event) {
        var dataURL = event.target.result;
        var imageTag = $(input).parent().find('img');

        if (imageTag.length == 0) {
          imageTag = $('<img>');
          imageTag.insertBefore($(input));
        }

        if (!imageTag.attr('width')) {
          imageTag.attr('width', '100%');
        }
        imageTag.attr('src', dataURL);
      };

      fileReader.readAsDataURL(image);
    }
  };
});
