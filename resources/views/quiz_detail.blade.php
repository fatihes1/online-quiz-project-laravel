<x-app-layout>
    <x-slot name="header">{{ $quiz->title }}</x-slot>
    <div class="card">
        <div class="card-body">

            <p class="card-text">
            <div class="row">
                <div class="col-md-4">
                    <ul class="list-group">
                        @if ($quiz->my_result)
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Puan
                                <span title=""
                                    class="badge bg-primary rounded-pill">{{ $quiz->my_result->point }}</span>
                            </li>

                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Doğru / Yanlış Sayısı
                                <div class="float-end">
                                    <span title="" class="badge bg-success rounded-pill">{{ $quiz->my_result->correct }}
                                        Doğru</span>
                                    <span title="" class="badge bg-danger rounded-pill">{{ $quiz->my_result->wrong }}
                                        Yanlış</span>
                                </div>
                            </li>
                        @endif
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
                        @if ($quiz->result)
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
                </div>
                <div class="col-md-8">
                    {{ $quiz->description }}
                    @if ($quiz->my_result)
                    <div class="d-grid gap-2">
                        <a href="{{ route('quiz.join', $quiz->slug) }}" class="btn btn-info btn-sm">Cevaplarımı Görüntüle</a>
                    </div> 
                    @else
                    <div class="d-grid gap-2">
                        <a href="{{ route('quiz.join', $quiz->slug) }}" class="btn btn-primary btn-sm">Quiz'e Katıl</a>
                    </div>
                    @endif

                </div>
            </div>
            </p>



        </div>
    </div>
</x-app-layout>
