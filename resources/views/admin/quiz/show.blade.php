<x-app-layout>
    <x-slot name="header">{{ $quiz->title }}</x-slot>
    <div class="card">
        <div class="card-body">

            <p class="card-text">
            <div class="row">
                <h5 class="card-title float-start">
                    <a href="{{route('quizzes.index')}}" class="btn btn-sm btn-secondary"><i class="fa fa-arrow-left"></i> Quizlere Dön</a>
                </h5>
                <div class="col-md-4 mt-2">
                    <ul class="list-group">

                        @if ($quiz->finished_at)
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Son Katılım Tarihi
                                <span title="{{ $quiz->finished_at }}"
                                    class="badge bg-secondary rounded-pill">{{ $quiz->finished_at->diffForHumans() }}</span>
                            </li>
                        @endif
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Soru Sayısı
                            <span class="badge bg-secondary rounded-pill">{{ $quiz->questions_count }}</span>
                        </li>
                        @if ($quiz->details)
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Katılımcı Sayısı
                                <span class="badge bg-warning rounded-pill">{{ $quiz->details['join_count'] }}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Ortalama Puan
                                <span class="badge bg-info rounded-pill">{{ $quiz->details['average'] }}</span>
                            </li>
                        @endif
                    </ul>
                    @if (count($quiz->topTen) > 0)
                        <div class="card mt-3">
                            <div class="card-body">
                                <h5 class="card-title">Top 10</h5>
                                <ul class="list-group">
                                    @foreach ($quiz->topTen as $result)
                                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                            <div class="col-md-2">
                                                <strong class="h4">{{$loop->iteration}}.</strong>
                                            </div>
                                            <div class="col-md-2">
                                                <img src="{{$result->user->profile_photo_url}}" alt="" class="w-8 h-8 rounded-pill">
                                            </div>
                                            <div class="col-md-6">
                                                <span @if(auth()->user()->id == $result->user_id)class="text-danger" @endif>{{$result->user->name}}</span>
                                            </div>
                                             <div class="col-md-4">
                                                <span class="badge bg-success rounded-pill">{{ $result->point }}</span>
                                             </div>
                                        </li>
                                    @endforeach

                                </ul>
                            </div>
                        </div>
                    @endif
                </div>
                <div class="col-md-8">
                    {{ $quiz->description }}
                    <hr>
                    <h4 class="mt-3 mb-2">Quize Katılan Üyeler ve Sonuçları</h4>
                    <div class="card mt-4">
                        <div class="card-header">
                          <div class="row mt-2">
                            <div class="col-md-6">
                                Ad Soyad
                            </div>
                            <div class="col-md-2">Puan</div>
                            <div class="col-md-2">Doğru</div>
                            <div class="col-md-2">Yanlış</div>
                          </div>
                        </div>
                        <div class="card-body">
                            @foreach($quiz->results as $result)
                            <div class="row mt-2">
                                <div class="col-md-6">
                                    {{$result->user->name}}
                                </div>
                                <div class="col-md-2">{{$result->point}}</div>
                                <div class="col-md-2">{{$result->correct}}</div>
                                <div class="col-md-2">{{$result->wrong}}</div>
                              </div>
                              <hr>
                              @endforeach
                        </div>
                      </div>

                </div>
            </div>
            </p>



        </div>
    </div>
</x-app-layout>
