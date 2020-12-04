@extends('layout.main')
@section('title')
    Homepage
@endsection

@section('content')
    <div class="slideshow">
        <img class="mySlides" src="{{asset('img/slider/slide1.jpg')}}" alt="auto1">
        <img class="mySlides" src="{{asset('img/slider/slide2.jpg')}}" alt="auto2">
        <img class="mySlides" src="{{asset('img/slider/slide3.jpg')}}" alt="auto3">
    </div>

    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) {
                myIndex = 1
            }
            x[myIndex-1].style.display = "block";
            setTimeout(carousel, 5000);
        }
    </script>
    <p>Lorem ipsum dolor sit amet.</p>


    <div class="container">
        <h2>Ervaringen</h2>
        <div class="row">
            <div class="col-sm" id="review">
                <p>Super website, makkelijk te gebruiken en supergoedkoop!!</p>
                <p>~Jeroen</p>
            </div>

            <div class="col-sm" id="review">
                <p>Super luxe auto voor weinig geld, echt een aanrader</p>
                <p>~Eva</p>
            </div>

            <div class="col-sm" id="review">
                <p>Gewoon perfect</p>
                <p>~Jan</p>
            </div>

        </div>
    </div>
@endsection
