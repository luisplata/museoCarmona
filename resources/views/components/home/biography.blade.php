<section class="sectionBiographyHome sectionAboutHome">
    <div class="row rowOne">
        <div class="col s12 m6 l6">
            <div class="text">
                <h1>
                    {{$webInfo[1]->name}}
                </h1>
                <h2>
                    {{$webInfo[1]->title}} <br>
                    <span>
                        {{$webInfo[1]->subtitle}}
                    </span>
                    <hr>
                </h2>
                <h3 class="h3 h3_2">{{$webInfo[1]->text}}</h3>
                <a class="waves-effect waves-light btn click_two_h3">Leer más</a>
            </div>
        </div>
        <div class="col s12 m6 l6">
            <img class="image" src="{{asset($webInfo[1]->img)}}" alt="">
        </div>
    </div>
</section>
