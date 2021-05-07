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
    @component('components.home.process',[
         'webInfo'=>$webInfo,
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
    @component('components.home.newsletter')
    @endcomponent
@endsection
@section('script')
    <script>
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
    <script src="https://maps.googleapis.com/maps/api/js?key=CHANGE_FOR_ALL&callback=initMap" async defer>
    </script>
@endsection
