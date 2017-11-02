$(function() {
    var imgHeight = $('.isra-ride-image').height();
    var imgGrp = $('.isra-ride-image');

    $.each(imgGrp, function(key, value) {
        var israMemberImage = $(value).find('img');
        var iHeight = $(israMemberImage).height();
        var difference = imgHeight - iHeight;
        var paddingValues = difference / 2;

        $(value).css('padding-top', paddingValues);
        $(value).css('padding-bottom', paddingValues);
    });

    function loadImageModal(imagePath) {
        console.log('imagePath', imagePath);
        $('#modal-example').modal('show');
    };

    $('.isra-thumbnail').on('click', function() {
        var imagePath = $(this).attr('src');
        loadImageModal(imagePath);
    });
});
