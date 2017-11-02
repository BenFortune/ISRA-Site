<isra-members-rides>
    <div class="col-sm-4" each={rides}>
        <div class="isra-ride-card">
            <div class="isra-ride-image">
                <img class="isra-thumbnail img-responsive" src="{imgSrc}" alt="{name}, {car}">
            </div>
            <div class="isra-ride-info">
                <p>{name}</p>
                <p>{location}</p>
                <p>{car}</p>
            </div>
        </div>
    </div>

    <script>
        this.rides = [
            {
                'imgSrc': 'img/members-rides/member-1-ride.jpg',
                'name': 'John and John Doe',
                'location': 'Winterset, IA',
                'car': '1932 Ford Coupe'
            },
            {
                'imgSrc': 'img/members-rides/member-2-ride.jpg',
                'name': 'Roger and Diane Roe',
                'location': 'Ames, IA',
                'car': '1940 Ford Pickup'
            },
            {
                'imgSrc': 'img/members-rides/member-3-ride.jpg',
                'name': 'Jimmy Shine',
                'location': 'Spencer, IA',
                'car': '1934 Ford Pickup'
            },
            {
                'imgSrc': 'img/members-rides/member-4-ride.jpg',
                'name': 'Dave Smith',
                'location': 'Waverly, IA',
                'car': '1959 Volkswagen Beetle'
            },
            {
                'imgSrc': 'img/members-rides/member-5-ride.jpg',
                'name': 'Mike and Roxanne Johnson',
                'location': 'Britt, IA',
                'car': '1950 Chevrolet'
            },
            {
                'imgSrc': 'img/members-rides/member-6-ride.jpg',
                'name': 'Jerry and Jill Thompson',
                'location': 'Clinton, IA',
                'car': '1970 Dodge Charger'
            }
        ]
        this.on('*', function(eventName) {
            if (eventName === 'mount') {
                var imgHeight = $('.isra-ride-image').height();
                var imgGrp = $('.isra-ride-image');

                $.each(imgGrp, function(key, value) {
                    var israMemberImage = $(this).find('img');
                    console.log('israMemberImage', israMemberImage);
                    var iHeight = israMemberImage.attr('src');
                    console.log('iHeight', iHeight);
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
            }
        })
    </script>
</isra-members-rides>
