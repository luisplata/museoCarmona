<section class="sectionInfoHome">
    <div class="row rowOne">
        <div class="col s12 center-aling">
            <h1>
                Notas y <span>Videos</span>
                <hr>
            </h1>
        </div>
    </div>
    <div class="row rowOne">
        <div class="col s12">
            <div class="img">
                <div>
                    <img class='bannerForThreeImages' src="{{asset('img/info/notasyvideos/banner_first.png')}}" alt="">
                </div>
            </div>
        </div>
        <div class="col s12 m4">
            <div class="element">
                <h1 class='valign-wrapper'>
                    {{$iconsInfo[12]->name}}
                </h1>
            </div>
        </div>
        <div class="col s12 m4">
            <div class="element">
                <h1>
                    {{$iconsInfo[13]->name}}
                </h1>
            </div>
        </div>
        <div class="col s12 m4">
            <div class="element">
                <h1>
                    {{$iconsInfo[14]->name}}
                </h1>
            </div>
        </div>
    </div>
    <div class="row rowOne">
        <div class="col s12">
            <div class="img">
                <div>
                    <img class='bannerForThreeImages' src="{{asset('img/info/notasyvideos/banner_second.png')}}" alt="">
                </div>
            </div>
        </div>
        <div class="col s12 m4">
            <div class="element">
                <h1>
                    {{$iconsInfo[15]->name}}
                </h1>
            </div>
        </div>
        <div class="col s12 m4">
            <div class="element">
                <h1>
                    {{$iconsInfo[17]->name}}
                </h1>
            </div>
        </div>
        <div class="col s12 m4">
            <div class="element">
                <h1>
                    {{$iconsInfo[16]->name}}
                </h1>
            </div>
        </div>
    </div>

    <div class="row rowOne">
        <div class="col s12 m6">
            <div class="element">
                <div class="img">
                    <div>
                        <video controls >
                            <source src="{{asset('img/info/notasyvideos/videos/one.mp4')}}" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </div>
                <h1>
                    Carmona Street Sculpture Exhibit
                </h1>
            </div>
        </div>
        <div class="col s12 m6">
            <div class="element">
                <div class="img">
                    <div>
                        <video controls>
                            <source src="{{asset('img/info/notasyvideos/videos/two.mp4')}}" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </div>
                <h1>
                    Edgardo Carmona exposition de sculptures quais de Seine Paris 2011
                </h1>
            </div>
        </div>
    </div>
</section>