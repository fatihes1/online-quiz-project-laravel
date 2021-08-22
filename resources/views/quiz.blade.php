<x-app-layout>
    <x-slot name="header">{{ $quiz->title }}</x-slot>
    <div class="card">
        <div class="card-body">

            <form action="{{route('quiz.result', $quiz->slug)}}" method="POST">
                @csrf
                @foreach ($quiz->questions as $question)
                    <strong> #{{ $loop->iteration }}.</strong>{{ $question->question }}
                    @if ($question->image)
                        <img src="{{ asset($question->image) }}" alt="" class="img-responsive"
                            style="width: 60%; border-radius:5px">
                    @endif
                    <div class="form-check ml-3 mt-2">
                        <input class="form-check-input" type="radio" name="{{ $question->id }}"
                            id="quiz{{ $question->id }}1" value="answer1" required>
                        <label class="form-check-label" for="quiz{{ $question->id }}1">
                            {{ $question->answer1 }}
                        </label>
                    </div>
                    <div class="form-check ml-3">
                        <input class="form-check-input" type="radio" name="{{ $question->id }}"
                            id="quiz{{ $question->id }}2" value="answer2" required>
                        <label class="form-check-label" for="quiz{{ $question->id }}2">
                            {{ $question->answer2 }}
                        </label>
                    </div>
                    <div class="form-check ml-3">
                        <input class="form-check-input" type="radio" name="{{ $question->id }}"
                            id="quiz{{ $question->id }}3" value="answer3" required>
                        <label class="form-check-label" for="quiz{{ $question->id }}3">
                            {{ $question->answer3 }}
                        </label>
                    </div>
                    <div class="form-check ml-3">
                        <input class="form-check-input" type="radio" name="{{ $question->id }}"
                            id="quiz{{ $question->id }}4" value="answer4" required>
                        <label class="form-check-label" for="quiz{{ $question->id }}4">
                            {{ $question->answer4 }}
                        </label>
                    </div>
                    <hr>
                @endforeach
                <div class="d-grid gap-2 mt-2 ">
                    <button type="submit" class="btn btn-success btn-sm">Sınavi Bitir</button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>
