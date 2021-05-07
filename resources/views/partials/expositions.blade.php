@php
    $number = 3;
    $cont = 0;
    $contPlus = $number - 1;
@endphp
<div class="sliderExpositions" id="sliderExpositions">
    @for($j=1;$j<=intval(ceil(count($yearExposition)/$number));$j++)
        <div>
            <table>
                <thead>
                <tr>
                    <th>Año</th>
                    <th>Ciudad y país</th>
                    <th>lugar</th>
                </tr>
                </thead>
                <tbody>
                @foreach($yearExposition as $key => $y)
                    @php
                        $expositions = \App\Models\Expositions::where('status','activo')
                            ->where('category_expositions_id',$category_id)
                            ->where('year_expositions_id',$y->id)
                            ->get();
                    @endphp
                    @if($key >= $cont && $key <= $contPlus && $expositions->count() >= 1)
                        @php
                            $contadorInter = 1;
                        @endphp
                        <tr>
                            <td>
                                <h3>
                                    {{$y->name}}
                                </h3>
                            </td>
                            <td>
                                @foreach($expositions as $e)
                                    <h2>
                                        <span2 class="span2">
                                            Ciudad y lugar <br>
                                        </span2>
                                        {{$e->city}}, <span>{{$e->country}}</span>
                                        <span2>
                                            ({{$e->place}})
                                        </span2>
                                    </h2>
                                @endforeach
                            </td>
                            <td class="ocult">
                                @foreach($expositions as $e)
                                    <h2>
                                        {{$e->place}}
                                    </h2>
                                @endforeach
                            </td>
                        </tr>
                    @endif
                @endforeach
                </tbody>
            </table>
        </div>
    @php
        $cont = $cont + $number;
        $contPlus = $contPlus + $number;
    @endphp
    @endfor
</div>
