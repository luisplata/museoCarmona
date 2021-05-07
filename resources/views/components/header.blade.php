<nav class="header">
    <ul id="nav-mobile" class="left hide-on-large-only">
        <li>
            <a data-target="mobile_menu" class="sidenav-trigger">
                <i class="material-icons">menu</i>
            </a>
        </li>
    </ul>
    <a href="{{Route('home')}}" class="brand-logo">
        <img class="logo_white" src="{{asset('img/header/logo.svg')}}" alt="">
        <img class="logo_blue" src="{{asset('img/header/logo.svg')}}" alt="">
    </a>
    <div class="nav-wrapper">
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="{{url('/')}}">Inicio</a></li>
            <li><a class="galleryClick">Galería</a></li>
            <li><a class="artistClick">Obras</a></li>
            <li><a class="aboutClick">Acerca de</a></li>
            <li><a class="contactClick">Contacto</a></li>
            <li>
                <a class="shop" href="{{$info->link_buy}}" target="_blank">
                    <h6>Compra Aquí</h6>
                </a>
            </li>
            <li class="li">
                <a href="{{$info->facebook}}" target="_blank">
                    <img class="redes face" src="{{asset('img/header/face.svg')}}" alt="">
                </a>
            </li>
            <li class="li">
                <a href="{{$info->instagram}}" target="_blank">
                    <img class="redes ins" src="{{asset('img/header/ins.svg')}}" alt="">
                </a>
            </li>
        </ul>
    </div>
</nav>

<div class="spaceador">
</div>

<ul id="mobile_menu" class="sidenav">
    <h1>
        <span class="close-menu">X</span>
    </h1>
    <li>
        <a class="close-menu" href="{{url('/')}}">
            Inicio
        </a>
    </li>
    <li>
        <a class="close-menu galleryClick">
            Galería
        </a>
    </li>
    <li>
        <a class="close-menu artistClick">
            Obras
        </a>
    </li>
    <li>
        <a class="close-menu aboutClick">
            Acerca de
        </a>
    </li>
    <li>
        <a class="close-menu contactClick">
            Contacto
        </a>
    </li>
    <li>
        <a class="shop close-menu" href="{{$info->link_buy}}" target="_blank">
            Compra Aquí
        </a>
    </li>
    <div class="redes">
        <a href="{{$info->facebook}}" target="_blank">
            <img class="face" src="{{asset('img/header/face.svg')}}" alt="">
        </a>
        <a href="{{$info->instagram}}" target="_blank">
            <img src="{{asset('img/header/ins.svg')}}" alt="">
        </a>
    </div>
</ul>
