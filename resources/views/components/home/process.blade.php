<section class="sectionAboutHome sectionAboutProcess">
    <div class="row rowOne">
        <div class="col s12 m8 l8">
            <div class="slickProcess" id="slickProcess">
                @foreach($imageSculpture as $i)
                    <div>
                        <img class="image" src="{{asset($i->img)}}" alt="">
                    </div>
                @endforeach
            </div>
            <div class="arrow">
                <img class="arrowLeft" src="{{asset('img/about/left.svg')}}" alt="">
                <img class="arrowRight" src="{{asset('img/about/right.svg')}}" alt="">
            </div>
        </div>
        <div class="col s12 m4 l4">
            <div class="text">
                <h1>
                    {{$webInfo[2]->name}}
                </h1>
                <h2>
                    {{$webInfo[2]->title}} <br>
                    <span>
                        {{$webInfo[2]->subtitle}}
                    </span>
                    <hr>
                </h2>
                <h3 class="h3 h3_3">{!! $webInfo[2]->text  !!}</h3>
                <a class="waves-effect waves-light btn click_three_h3">Leer más</a>
            </div>
        </div>
    </div>
</section>
