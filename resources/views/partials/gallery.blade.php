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