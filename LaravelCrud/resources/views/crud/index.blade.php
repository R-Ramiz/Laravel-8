<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/bootstrap.css">
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

            <form action="crud_save" method="post">
                    @csrf
                <div class="card">
                
                    <div class="card-header">
                        Customer Add
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" value="{{old('name')}}" class="form-control" id="" placeholder="Enter Customer Name"/>
                            <span class="text-danger">@error('name') {{$message}} @enderror</span>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" value="{{old('email')}}" class="form-control" id="" placeholder="Enter Customer Email"/>
                            <span class="text-danger">@error('email') {{$message}} @enderror</span>
                        </div>
                        <div class="form-group">
                            <label for="mobile">Mobile</label>
                            <input type="tel" name="mobile" value="{{old('mobile')}}" class="form-control" id="" placeholder="Enter Customer Mobile Number"/>
                            <span class="text-danger">@error('mobile') {{$message}} @enderror</span>
                        </div>                       
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary">Save</button>
                    </div>
                </div>

            </form>
            </div>
        </div>
            <div class="row">
                <div class="col-sm-12">
                    <h1>Customer List</h1>
                    <table class="table table-hovered table-stripped">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($customer_list as $index=>$data)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $data->name }}</td>
                                <td>{{ $data->email }}</td>
                                <td>{{ $data->mobile }}</td>
                                <td>
                                    <a href="edit/{{ $data->id }}" class="btn btn-primary">Edit</a>
                                    &nbsp;
                                    <a href="delete/{{ $data->id }}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>