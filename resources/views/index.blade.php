@extends('template.layout')
@section('title', 'Museo Carmona')
@section('style')
@endsection
@section('content')
    @component('components.home.banner',[
        'banner'=>$banner
    ])
    @endcomponent
    @component('components.home.about',[
        'webInfo'=>$webInfo
    ])
    @endcomponent
    @component('components.home.biography',[
        'webInfo'=>$webInfo
    ])
    @endcomponent
    @component('components.home.process',['webInfo'=>$webInfo,
         'imageSculpture'=>$imageSculpture
    ])
    @endcomponent
    @component('components.home.services',[
         'webInfo'=>$webInfo,
         'services'=>$services
    ])
    @endcomponent
    @component('components.home.gallery',[
        'categoryProjects'=>$categoryProjects,
        'projects'=>$projects
    ])
    @endcomponent
    @component('components.home.exposition',[
        'yearExposition'=>$yearExposition
    ])
    @endcomponent
    @component('components.home.permanent',[
        'works'=>$works
    ])
    @endcomponent
    @component('components.home.info',[
        'info'=>$info,
        'iconsInfo'=>$iconsInfo
    ])
    @endcomponent
    @component('components.home.books',[
        'info'=>$info,
        'iconsInfo'=>$iconsInfo
    ])
    @endcomponent
    
    @component('components.home.catalogo',[
        'info'=>$info,
        'iconsInfo'=>$iconsInfo
    ])
    @endcomponent
    @component('components.home.newsletter')
    @endcomponent
@endsection
@section('script')
    <!--<script>
        var map1;
        function initMap() {
            map1 = new google.maps.Map(document.getElementById('map'), {
                center: {lat:{{$info->latitud}}, lng: {{$info->longitud}} },
                zoom: 13,
            });
            var marker1 = new google.maps.Marker({
                position: map1.getCenter(),
                map: map1,
                title: 'Museo Carmona'
            });
            /*

            var popup1 = new google.maps.InfoWindow({
                content: '<img style="width: 60pt" src="{{asset("img/footer/icon_gps.svg")}}" alt="">',
            });

            popup1.open(map1, marker1);*/
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key={{env('API_KEY_MAPS','AIzaSyAh-L0Yzx1_tVcQOQ4IqkncQ0mDoZ7L_Q8')}}&callback=initMap" async defer></script>-->
    <!--https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY_HERE&callback=initMap&libraries=places,geometry&channel=GMPSB_locatorplus_v2_cABCDE-->
    <script>
        const data = null;

const xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
	if (this.readyState === this.DONE) {
		console.log(this.responseText);
	}
});

xhr.open("GET", "https://currency-exchange.p.rapidapi.com/exchange?to=Colombia&from=Colombia&q=asasas");
xhr.setRequestHeader("x-rapidapi-key", "b424d149dbmsheae84bed44210c8p14f4c6jsn81c336cb857d");
xhr.setRequestHeader("x-rapidapi-host", "currency-exchange.p.rapidapi.com");

xhr.send(data);
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-ZNJE4S4659"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-ZNJE4S4659');
    </script>
@endsection
