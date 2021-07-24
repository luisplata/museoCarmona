<div class="slickGallery" id="sliderGallery">
    @php
        $number = 8;
        $cont = 0;
        $contPlus = $number - 1;
    @endphp
    @php
        $keyMore= 1;
    @endphp
    @for($j=1;$j<=ceil($projects->count()/$number);$j++)
        <div>
            <div class="row_2">
                @if($projects[0]->subtitle == '')
                    <div style='display:none' class="column larger">
                        <h6>
                            No hay proyectos
                        </h6>
                    </div>
                @endif
                @foreach($projects as $key => $p)
                    @if($key >= $cont && $key <= $contPlus)
                        <div class="col medium"
                             image="{{asset($p->img)}}"
                             title="{{$p->title}}"
                             subtitle="{{$p->subtitle}}"
                             year="{{$p->year}}"
                             medida="{{$p->medida}}"
                        >
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
                                <span>{{$p->title}}</span> <br>
                                {{$p->subtitle}}
                            </h2>
                            <h3>
                                Ver más
                                <i class="material-icons">
                                    <img src="{{asset('img/gallery/arrow.svg')}}" alt="">
                                </i>
                            </h3>
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
