<section class="sectionServices">
    <div class="row rowOne">
        <div class="col s12 m6 l7">
            <div class="text">
                <h1>
                    {{$webInfo[3]->title}} <br>
                    <span>
                        {{$webInfo[3]->subtitle}}
                    </span>
                    <hr>
                </h1>

                <div class="rowTwo rowBig">

                    @foreach($services as $s)
                        <div class="column col">
                            <div class="rowTwo">
                                <div class="medium col">
                                    <div class="img">
                                        <div>
                                            <img src="{{asset($s->img)}}" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="medium_2 col">
                                    <h2>
                                        {{$s->name}}
                                    </h2>
                                    <h3>
                                        {{$s->text}}
                                    </h3>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>

            </div>
        </div>
        <div class="col s12 m6 l5">
            <img class="image" src="{{asset($webInfo[3]->img)}}" alt="">
        </div>
    </div>
</section>
