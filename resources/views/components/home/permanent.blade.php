<section class="sectionPermanentHome">
    <div class="row rowOne">
        <div class="col s12">
            <h1>
                Obras <span>Permanentes</span>
                <hr>
            </h1>
        </div>
        <div class="col s12">
            <div class="slickPemanent" id="slickPemanent">
                @foreach($works as $w)
                    <div>
                          <div class="row rowTwo">
                              <div class="col s12 m8 l8">
                                  <img src="{{asset($w->img)}}" alt="">
                              </div>
                              <div class="col s12 m4 l4">
                                  <div class="row_2">
                                      <div class="col column">
                                          <h1>
                                                Ciudad
                                          </h1>
                                          <h2>
                                              {{$w->country}},
                                              <span>
                                              {{$w->city}}
                                              </span>
                                          </h2>
                                      </div>
                                      <div class="col column">
                                          <h1>
                                              Lugar
                                          </h1>
                                          <h2>
                                              {{$w->place}}
                                          </h2>
                                      </div>
                                      <div class="col column">
                                          <h1>
                                              Detalles
                                          </h1>
                                          <h2>
                                              {{$w->details}}
                                          </h2>
                                      </div>
                                  </div>
                              </div>
                          </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
