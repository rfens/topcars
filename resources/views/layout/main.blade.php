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

<body>
<header>
    <div class="container">
        <nav class="navbar navbar-expand" id="nav">
            <a class="navbar-brand" href="/"><h1>Topcars</h1></a>
            <div>
                <ul class="navbar-nav">
                <span class="border">
                    <li class="nav-item">
                        <a class="nav-link" href="/cars">Cars</a>
                    </li>
                </span>
                    <span class="border">
                    <li class="nav-item">
                        <a class="nav-link" href="/reserveren">Reserveren</a>
                    </li>
                </span>
                    <span class="border">
                    <li class="nav-item">
                        <a class="nav-link" href="/dasboard">Dashboard</a>
                    </li>
                </span>
                    <span class="border">
                    <li class="nav-item">
                        <a class="nav-link" href="/dasboard">Dashboard</a>
                    </li>
                </span>
                    <span class="border">
                    <li class="nav-item">
                        <a class="nav-link" href="/dasboard">Dashboard</a>
                    </li>
                </span>
                    @guest
                        @if (Route::has('login'))
                            <span class="border">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            </span>
                        @endif

                        @if (Route::has('register'))
                            <span class="broder">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            </span>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </nav>
    </div>
</header>
    @yield('content')
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
