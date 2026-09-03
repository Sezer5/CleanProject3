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
                                <h3>Category</h3>
                                <hr>
                                <a href="{{ route('admin.category.create') }}" class="btn btn-success btn-sm"><i
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
                                        @foreach ($categories as $category)
                                            <tr>
                                                <td>{{ $category->id }}</td>
                                                <td>{{ $category->slug }}</td>
                                                <td>{{ $category->name }}</td>
                                                <td>
                                                    <a href="{{ route('admin.category.edit', $category->slug) }}"
                                                        class="btn btn-warning btn-sm"><i class="bi bi-pencil"></i></a>
                                                </td>
                                                <td>
                                                    <a href="#" onclick="deleteItem({{ $category->id }})"
                                                        class="btn btn-danger btn-sm"><i class="bi bi-trash"></i></a>
                                                    <form id="{{ $category->id }}"
                                                        action="{{ route('admin.category.destroy', $category->slug) }}"
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
