'use strict';

// SETTING IMAGE VARIABLES 
var imageNumber = 0;
var imageGallery = $('.isra-rides-gallery ul li');
var imageCount = imageGallery.length;
var moveLeft = $('.isra-rides-gallery .image-left button');
var moveRight = $('.isra-rides-gallery .image-right button');

// LOGIC FOR MOVING IMAGES
function moveImgRight() {
    imageNumber = imageNumber + 1;
    verifyWithinBounds(imageNumber);
}

function moveImgLeft() {
    imageNumber = imageNumber - 1;
    verifyWithinBounds(imageNumber);
    return imageNumber;
}

function verifyWithinBounds(imageNumber) {
    console.log('verifyWithinBounds called image number', imageNumber);
    if (imageNumber === imageCount) {
        goToBeginning();
    } else if (imageNumber < 0) {
        var number = imageCount - 1;
        moveImage(number);
        decrementImageNumber(number + 1);
    } else {
        console.log('do what you do');
        moveImage(imageNumber);
    }
}

function goToBeginning() {
    $(imageGallery).removeClass('active');
    $(imageGallery[0]).addClass('active');
    imageNumber = 0;
}

function moveImage(imageNumber) {
    console.log('imageNumber called, image number is', imageNumber);
    $(imageGallery).removeClass('active');
    $(imageGallery[imageNumber]).addClass('active');
}

function decrementImageNumber(number) {
    imageNumber = number - 1;
}

//EVENTS
$(moveRight).on('click', moveImgRight);
$(moveLeft).on('click', moveImgLeft);
