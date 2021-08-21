<section class="sectionGalleryHome">
    <div class="row rowOne">
        <div class="col s12">
            <h1>
                Galería de <span>Obras</span>
                <hr>
            </h1>
            <div class="row_2 rowOcult">
                @foreach($categoryProjects as $key => $c)
                <h1 class="{{$key == 0?'active':''}} col column" id="{{$c->id}}">
                    {{$c->name}}
                    <hr>
                </h1>
                @endforeach
            </div>
            <select class="browser-default">
                @foreach($categoryProjects as $key => $c)
                    <option {{$key == 0?'selected':''}}value="{{$c->id}}">{{$c->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="col s12">
            <div id="loaderGalley" class="notProductos">
                <h6>
                    Cargando ...
                </h6>
                <div class="progress">
                    <div class="indeterminate">
                    </div>
                </div>
            </div>
            <div id="gallerylist">
                <div class="slickGallery" id="sliderGallery">
                    @php
                        $number = 2;
                        $cont = 0;
                        $contPlus = $number - 1;
                    @endphp
                    @php
                        $keyMore= 1;
                    @endphp
                    @for($j=1;$j<=ceil($projects->count()/$number);$j++)
                        <div>
                            <div class="row_2">
                                
                                @foreach($projects as $key => $p)
                                    @if($key >= $cont && $key <= $contPlus)
                                        <div class="col medium"
                                             image="{{asset($p->img)}}"
                                             title="{{$p->title}}"
                                             subtitle="{{$p->subtitle}}"
                                             @if($p->year != '')
                                                year="{{$p->year}}"
                                             @else
                                                 year=""
                                             @endif
                                             medida="{{$p->medida}}"
                                        >
                                        <div class="centrado">
                                            <div class="img">
                                                <div>
                                                    @if($keyMore == 1 )
                                                        <img src="{{asset($p->img)}}" alt="">
                                                    @else
                                                        <img data-lazy="{{asset($p->img)}}" alt="">
                                                    @endif
                                                </div>
                                            </div>
                                            <h2>
                                                <span>{{$p->title}}</span> 
                                                <br>
                                                {{$p->subtitle}}
                                            </h2>
                                            <h3>
                                                Ver más
                                                <i class="material-icons">
                                                    <img src="{{asset('img/gallery/arrow.svg')}}" alt="">
                                                </i>
                                            </h3>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                        @php
                            $keyMore++;
                        @endphp
                        @php
                            $cont = $cont + $number;
                            $contPlus = $contPlus + $number;
                        @endphp
                    @endfor
                </div>
            </div>
        </div>
    </div>
</section>

@component('components.modals.gallery')
@endcomponent
