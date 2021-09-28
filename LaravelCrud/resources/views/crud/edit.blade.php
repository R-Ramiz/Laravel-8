<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="assets/bootstrap.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-4 offset-sm-4">
            @if(Session::get('Success'))
                <span class="alert alert-success">{{ Session::get('Success')}}</span>
            @endif
            @if(Session::get('fail'))
                <span class="alert alert-danger">{{ Session::get('fail')}}</span>
            @endif

            <form action="{{ route('crud_update')}}" method="post">
                <!-- <form action="crud_update" method="post"> -->
                <input type="text" name="id" value="{{ $data->id }}"  id="" hidden>
                    @csrf
                <div class="card">
                
                    <div class="card-header">
                       Edit Customer 
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" value="{{ $data->name }}" class="form-control" id="" placeholder="Enter Customer Name"/>
                            <span class="text-danger">@error('name') {{$message}} @enderror</span>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" value="{{ $data->email }}" class="form-control" id="" placeholder="Enter Customer Email"/>
                            <span class="text-danger">@error('email') {{$message}} @enderror</span>
                        </div>
                        <div class="form-group">
                            <label for="mobile">Mobile</label>
                            <input type="tel" name="mobile" value="{{ $data->mobile }}" class="form-control" id="" placeholder="Enter Customer Mobile Number"/>
                            <span class="text-danger">@error('mobile') {{$message}} @enderror</span>
                        </div>                       
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary">Edit</button>
                    </div>
                </div>

            </form>
            </div>
        </div>
            
        </div>
       
</body>
</html>