<x-app-layout>
    <x-slot name="header">Quiz Oluştur</x-slot>
    
    <div class="card">
        <div class="card-body">
            <form method="POST" action="{{route('quizzes.store')}}">
                @csrf
                <div class="form-group">
                    <label for="">Quiz Başlığı</label>
                    <input type="text" name="title" class="form-control mt-1 mb-2" value="{{ old('title') }}">
                </div>
                <div class="form-group">
                    <label for="">Quiz Açıklaması</label>
                    <textarea name="description" class="form-control mt-1 mb-2" value="{{ old('description') }}" id="" rows="4"></textarea>
                </div>
                <div class="form-group">
                    <input id="hasFinished" @if(old('finished_at')) checked @endif type="checkbox" class="mt-2 mb-2">
                    <label for="">Bitiş Tarihi Olacak mı?</label>
                </div>
                <div id="finishedInput" class="form-group" @if(!old('finished_at')) style="display: none"  @endif>
                    <label for="">Quiz Son Tarihi</label>
                    <input type="datetime-local" name="finished_at" value="{{ old('finished_at') }}" class="form-control mt-1 mb-2" >
                </div>
                <div class="form-group d-grid gap-2">
                    <button class="btn btn-success btn-sm " type="submit">Quiz Oluştur</button>
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