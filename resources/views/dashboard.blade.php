<x-app-layout>
    <x-slot name="header">Anasayfa</x-slot>
    <div class="title row">
        <h4>Katılabileceğiniz Quizler</h4>
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="list-group">
                @foreach ($quizzes as $quiz)
                    <a href="{{ route('quiz.detail',$quiz->slug) }}" class="list-group-item list-group-item-action mt-2" style="border-radius:20px" aria-current="true">  
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">{{ $quiz->title }}</h5>    
                            <div class="">
                            </div>
                            <small>{{$quiz->finished_at ? $quiz->finished_at->diffForHumans().' bitiyor' : null }}</small>
                        </div>
                        <p class="mb-1">{{ Str::limit($quiz->description, 100) }}</p>
                        <small>{{$quiz->questions_count.' Soru'}}</small>
                    </a>
                @endforeach
                <div class="mt-2">
                    {{ $quizzes->links()}}
                </div>
                

            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header" style="text-align: center">
                    <i class="far fa-chart-bar"></i>  Quiz Sonuçlarınız
                </div>
                <ul class="list-group list-group-flush">
                    
                    @if($results->isEmpty())

                    <div class="alert alert-warning">
                        <i class="fas fa-exclamation"></i> Henüz hiçbir quize girmediniz. Soldaki alandan bir quiz seçin ve bilginizi test etmeye başlayın!
                    </div>
                    @else
                    @foreach ($results as $result)
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-md-10">
                                <a style="text-decoration: none; color: #000" href="{{route('quiz.detail', $result->quiz->slug)}}">{{$result->quiz->title}}</a> 
                            </div>
                            <div class="col-md-2" style="margin-top:auto;margin-bottom:auto;">
                                {{$result->point}}
                            </div>
                        </div>

                    </li>  
                    @endforeach
                    @endif

                   
                  
                </ul>
              </div>
        </div>
    </div>
</x-app-layout>
