<x-app-layout>
    <x-slot name="header">Quiz Güncelle</x-slot>
    
    <div class="card">
        <div class="card-body">
            <form method="POST" action="{{route('quizzes.update', $quiz->id)}}">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="">Quiz Başlığı</label>
                    <input type="text" name="title" class="form-control mt-1 mb-2" value="{{ $quiz->title }}">
                </div>
                <div class="form-group">
                    <label for="">Quiz Açıklaması</label>
                    <textarea name="description" class="form-control mt-1 mb-2"  id="" rows="4">{{$quiz->description}}</textarea>
                </div>
                <div class="form-group">
                    <label for="">Quiz Durumu</label>
                    <select name="status" class="form-control" id="">
                        <option @if($quiz->questions_count<5) disabled @endif @if ($quiz->status === 'publish') selected @endif value="publish">
                            Aktif
                        </option>
                        <option @if ($quiz->status === 'passive') selected @endif value="passive">Pasif</option>
                        <option @if ($quiz->status === 'draft') selected @endif value="draft">Taslak</option>
                    </select>
                </div>
                <div class="form-group">
                    <input id="hasFinished" @if($quiz->finished_at) checked @endif type="checkbox" class="mt-2 mb-2">
                    <label for="">Bitiş Tarihi Olacak mı?</label>
                </div>
                <div id="finishedInput" class="form-group" @if(!$quiz->finished_at) style="display: none"  @endif>
                    <label for="">Quiz Son Tarihi</label>
                    <input type="datetime-local" name="finished_at" @if($quiz->finished_at) value="{{ date('Y-m-d\TH:i', strtotime($quiz->finished_at))  }}" @endif class="form-control mt-1 mb-2" >
                </div>
                <div class="form-group d-grid gap-2">
                    <button class="btn btn-success btn-sm " type="submit">Quizi Güncelle</button>
                </div>
            </form>
        </div>
    </div>
    <x-slot name="js">
        <script>
            $('#hasFinished').change(function(){
                if($('#hasFinished').is(':checked')){
                    $('#finishedInput').show();
                }else{
                    $('#finishedInput').hide();
                }
            });
        </script>
    </x-slot>

</x-app-layout>