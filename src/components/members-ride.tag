<isra-members-rides>
    <div class="col-sm-4" each={ride, index in rides}>
        <div class="isra-ride-card">
            <div class="isra-ride-image">
                <img class="isra-thumbnail img-responsive" src="{ride.imgSrc}" alt="{ride.name}, {ride.car}" id="ride{index}">
            </div>
            <div class="isra-ride-info">
                <p>{ride.name}</p>
                <p>{ride.location}</p>
                <p>{ride.car}</p>
            </div>
        </div>
    </div>

    <script>
        //TODO: move rides json into a separate riot template
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
                'name': 'Larry Anderson',
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
        this.on('*', function() {
            if (this.isMounted) {
                var rootEl = this.root;

                function setImagePadding(image) {
                    var containerHeight = 200;
                    var imageHeight = image.querySelector('img').offsetHeight;
                    var difference = containerHeight - imageHeight;
                    var paddingValues = difference / 2 + 'px';

                    return paddingValues;
                }

                function centerImages() {
                    var imgGrp = rootEl.querySelectorAll('.isra-ride-image');

                    for (var i = 0; i < imgGrp.length; i++) {
                        var paddingValues = setImagePadding(imgGrp[i]);
                        imgGrp[i].style.paddingTop = paddingValues;
                        imgGrp[i].style.paddingBottom = paddingValues;
                    }
                }

                function addEventListener(className, event, fn) {
                    var list = rootEl.querySelectorAll(className);
                    for (var i = 0; i < list.length; i++) {
                        list[i].addEventListener(event, function(e) {
                            var imageNumber = e.srcElement.id.slice(-1);
                            var rideInfo = e.target.alt;
                            var imagePath = e.target.attributes.src.nodeValue;
                            loadImageModal(imagePath, rideInfo, imageNumber);
                        });
                    }
                }

                function loadImageModal(imagePath, rideInfo, imageNumber) {
                    document.getElementById('modal-image').setAttribute('src', imagePath);
                    document.querySelector('.modal-title').innerHTML = rideInfo;
                    addModalButtonEvents(imagePath, imageNumber);
                    $('#modal-example').modal('show');
                };


                function setWhichImageToGoTo(imageNumber) {
                    //TODO: Add logic to determine which direction to go
                    moveImage();
                }

                function moveImage() {
                    console.log('moveImageCalled');
                }

                function setImageNumber(imageNumber) {
                    var imageNumber = parseInt(imageNumber) + 1;

                    return imageNumber;
                }

                function addModalButtonEvents(imagePath, imageNumber) {
                    var buttons = document.querySelectorAll('.modal-footer button');
                    for (var i = 0; i < buttons.length; i++) {
                        buttons[i].addEventListener('click', setWhichImageToGoTo.bind(null, setImageNumber(imageNumber)));
                    }
                }

                //TODO: Current hacky way of ensuring images have loaded; need a more elegant way of ensuring images have loaded.
                setTimeout(function() {
                    centerImages();
                    addEventListener('.isra-thumbnail', 'click');
                }, 500);

            }
        })
    </script>
</isra-members-rides>
