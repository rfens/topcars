$('#carouselExampleIndicators').on('slid.bs.carousel', function (e) {
    $('#carouselExampleIndicators').carousel('2') // Will slide to the slide 2 as soon as the transition to slide 1 is finished
})

$('#carouselExampleIndicators').carousel('1') // Will start sliding to the slide 1 and returns to the caller
$('#carouselExampleIndicators').carousel('2') // !! Will be ignored, as the transition to the slide 1 is not finished !!
