<section class="sectionAboutHome">
    <div class="row rowOne">
        <div class="col s12 m6 l6">
            <img class="image" src="{{asset($webInfo[0]->img)}}" alt="">
        </div>
        <div class="col s12 m6 l6">
            <div class="text">
                <h1>
                    {{$webInfo[0]->name}}
                </h1>
                <h2>
                    {{$webInfo[0]->title}} <br>
                    <span>
                        {{$webInfo[0]->subtitle}}
                    </span>
                    <hr>
                </h2>
                <h3 class="h3 h3_1">{{$webInfo[0]->text}}</h3>
                <a class="waves-effect waves-light btn click_one_h3">Leer más</a>
            </div>
        </div>
    </div>
</section>
