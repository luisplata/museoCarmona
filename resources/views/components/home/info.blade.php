<section class="sectionInfoHome">
    <div class="row rowOne">

        <div class="col s12 m3 l3">
            <div class="element">
                <div class="img">
                    <div>
                        <img src="{{asset($iconsInfo[0]->img)}}" alt="">
                    </div>
                </div>
                <h1>
                    {{$iconsInfo[0]->name}}
                </h1>
                <h2>
                    {{$info->mail}}
                </h2>
            </div>
        </div>
        <div class="col s12 m3 l3">
            <div class="element">
                <div class="img">
                    <div>
                        <img src="{{asset($iconsInfo[1]->img)}}" alt="">
                    </div>
                </div>
                <h1>
                    {{$iconsInfo[1]->name}}
                </h1>
                <h2>
                    {{$info->hours}} <br>
                    {{$info->days}}
                </h2>
            </div>
        </div>
        <div class="col s12 m3 l3">
            <div class="element">
                <div class="img">
                    <div>
                        <img src="{{asset($iconsInfo[2]->img)}}" alt="">
                    </div>
                </div>
                <h1>
                    {{$iconsInfo[2]->name}}
                </h1>
                <h2>
                    {{$info->address}} <br>
                    {{$info->city}}
                </h2>
            </div>
        </div>
        <div class="col s12 m3 l3">
            <div class="element">
                <div class="img">
                    <div>
                        <img src="{{asset($iconsInfo[3]->img)}}" alt="">
                    </div>
                </div>
                <h1>
                    {{$iconsInfo[3]->name}}
                </h1>
                <h2>
                    {{$info->phone}} <br>
                    {{$info->phone_2}}
                </h2>
            </div>
        </div>

    </div>
</section>
