<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

    <title>@yield('title')</title>
</head>
<header>
    <div class="container">
    <nav class="navbar navbar-expand" id="nav">
        <a class="navbar-brand" href="/"><h1>Topcars</h1></a>
        <div>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/cars">Cars</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/reserveren">Reserveren</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/dasboard">Dashboard</a>
                </li>
            </ul>
        </div>
    </nav>
    </div>
</header>
<body>


<div class="container">
    @yield('content')
</div>


</body>
<footer>
    <div class="container" id="footerContainer">
        <div class="row">
            <div class="left">
                <ul>
                    <li><a href="/cars">Cars</a></li>
                    <li><a href="/reserveren">Reserveren</a></li>
                    <li><a href="/dashboard">Dashboard</a></li>
                    <li><a href="/factuur">Factuur</a></li>
                    <li><a href="#">Sitemap</a></li>
                    <li><a href="#">Privacy</a></li>
                </ul>
            </div>
        </div>
        <div class="copyright">
            <p>~©Curio2020</p>
        </div>
    </div>
</footer>
</html>
