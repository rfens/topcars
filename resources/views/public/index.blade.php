@extends('layout.main')
@section('title')
    Homepage
@endsection
{{--slider--}}
@section('content')
    <div class="container">
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

            <div class="ervaringen">
                <h2>Ervaringen</h2>
                <div class="row">
                    <span class="border">
                        <div class="col-sm" id="review">
                            <p>Super website, makkelijk te gebruiken en supergoedkoop!!</p>
                            <p>~Jeroen</p>
                        </div>
                    </span>

                    <span class="border">
                        <div class="col-sm" id="review">
                            <p>Super luxe auto voor weinig geld, echt een aanrader</p>
                            <p>~Eva</p>
                        </div>
                    </span>

                    <span class="border">
                        <div class="col-sm" id="review">
                            <p>Gewoon perfect, top auto!</p>
                            <p>~Jan</p>
                        </div>
                    </span>
                </div>
            </div>
    </div>
@endsection

@section('footer')

@endsection
