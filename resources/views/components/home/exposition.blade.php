<section class="sectionExpositionHome">
    <h1>
        Exposiciones en el <span>Mundo</span>
    </h1>
    <div class="row rowOne">
        <div class="col s12">
            <!--
            <select class="browser-default">
                <option selected value="1">
                    Exposiciones Individuales
                </option>
                <option value="2">
                    Exposiciones Colectivas
                </option>
            </select>
            -->
            <div class="row_2 rowOcult">
                <h2 class="active col column" id="1">
                    Exposiciones <span>Individuales</span>
                    <hr>
                </h2>
                <!--
                <h2 class="col column" id="2">
                    Exposiciones <span>Colectivas</span>
                    <hr>
                </h2>
                -->
            </div>
        </div>
        <div class="col s12">
            <div id="loaderExposition" class="notProductos">
                <h6>
                    Cargando ...
                </h6>
                <div class="progress">
                    <div class="indeterminate">
                    </div>
                </div>
            </div>
            <div id="expositionlist">
                <div class="sliderExpositions" id="sliderExpositions">
                    @php
                        $number = 3;
                        $cont = 0;
                        $contPlus = $number - 1;
                    @endphp
                    @for($j=1;$j<=ceil(count($yearExposition)/$number);$j++)
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Año</th>
                                        <th>Ciudad y País</th>
                                        <th>Lugar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($yearExposition as $key => $y)
                                        @php
                                            $expositions = \App\Models\Expositions::where('status','activo')
                                                ->where('category_expositions_id',1)
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
                    <!--
                    @for($i=1;$i<=5;$i++)
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
                                    <tr>
                                        <td>
                                            <h3>
                                                1999
                                            </h3>
                                        </td>
                                        <td>
                                            <h2>
                                                Cartagena, <span>Colombia</span>
                                            </h2>
                                            <h2>
                                                C. Panama, <span>Panama</span>
                                            </h2>
                                            <h2>
                                                Bogota, <span>Colombia</span>
                                            </h2>
                                            <h2>
                                                Medellin, <span>Colombia</span>
                                            </h2>
                                            <h2>
                                                Cartagena, <span>Colombia</span>
                                            </h2>
                                        </td>
                                        <td>
                                            <h2>
                                                Museo de arte, Moderno
                                            </h2>
                                            <h2>
                                                Museo de arte, Contemporaneo
                                            </h2>
                                            <h2>
                                                Calle de la cultura, Corporación del arte
                                            </h2>
                                            <h2>
                                                Instituto de recreación y Cultura
                                            </h2>
                                            <h2>
                                                Imagina, Alianza Colombo Francesa
                                            </h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h3>
                                                2000
                                            </h3>
                                        </td>
                                        <td>
                                            <h2>
                                                Cartagena, <span>Colombia</span>
                                            </h2>
                                            <h2>
                                                Houston Texas, <span>USA</span>
                                            </h2>
                                            <h2>
                                                Bogota, <span>Colombia</span>
                                            </h2>
                                            <h2>
                                                C. Panama, <span>Panama</span>
                                            </h2>
                                        </td>
                                        <td>
                                            <h2>
                                                Museo Naval
                                            </h2>
                                            <h2>
                                                Art International
                                            </h2>
                                            <h2>
                                                Fenalco
                                            </h2>
                                            <h2>
                                                Galeria Habitante
                                            </h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h3>
                                                2001
                                            </h3>
                                        </td>
                                        <td>
                                            <h2>
                                                Cartagena, <span>Colombia</span>
                                            </h2>
                                        </td>
                                        <td>
                                            <h2>
                                                Museo Naval
                                            </h2>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    @endfor
                    -->
                </div>
            </div>
        </div>
    </div>
</section>
