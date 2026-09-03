    @extends('layouts.adminlayout')
    @section('title')
        Home
    @endsection
    @section('content')
        <main class="p-4">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12 mb-4">
                        <div class="card p-3">
                            <div class="card-header">
                                <h3>Size</h3>
                                <hr>
                                <a href="{{ route('admin.size.create') }}" class="btn btn-success btn-sm"><i
                                        class="bi bi-plus"></i> Add</a>
                            </div>
                            <div class="card-body col-md-6">
                                <table class="table table-responsive table-bordered">
                                    <thead>
                                        <tr>
                                            <th>*</th>
                                            <th>Slug</th>
                                            <th>Name</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($sizes as $size)
                                            <tr>
                                                <td>{{ $size->id }}</td>
                                                <td>{{ $size->slug }}</td>
                                                <td>{{ $size->name }}</td>
                                                <td>
                                                    <a href="{{ route('admin.size.edit', $size->slug) }}"
                                                        class="btn btn-warning btn-sm"><i class="bi bi-pencil"></i></a>
                                                </td>
                                                <td>
                                                    <a href="#" onclick="deleteItem({{ $size->id }})"
                                                        class="btn btn-danger btn-sm"><i class="bi bi-trash"></i></a>
                                                    <form id="{{ $size->id }}"
                                                        action="{{ route('admin.size.destroy', $size->slug) }}"
                                                        method="post">
                                                        @csrf
                                                        @method('DELETE')
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </main>
    @endsection
