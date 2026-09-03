    
    <?php $__env->startSection('title'); ?>
        Home
    <?php $__env->stopSection(); ?>
    <?php $__env->startSection('content'); ?>
        <main class="p-4">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12 mb-4">
                        <div class="card p-3">
                            <div class="card-header">
                                <h3>Product</h3>
                                <hr>
                                <a href="<?php echo e(route('admin.product.create')); ?>" class="btn btn-success btn-sm"><i
                                        class="bi bi-plus"></i> Add</a>
                            </div>
                            <div class="card-body col-md-12">
                                <table class="table table-responsive table-bordered">
                                    <thead>
                                        <tr>
                                            <th>*</th>
                                            <th>*</th>
                                            <th>Slug</th>
                                            <th>Name</th>
                                            <th>Category</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td><?php echo e($product->id); ?></td>
                                                <td><img src="<?php echo e(asset($product->thumbnail)); ?>" width="60"></td>
                                                <td><?php echo e($product->slug); ?></td>
                                                <td><?php echo e($product->name); ?></td>
                                                <td><?php echo e($product->category->name); ?></td>
                                                <td>
                                                    <a href="<?php echo e(route('admin.product.edit', $product->slug)); ?>"
                                                        class="btn btn-warning btn-sm"><i class="bi bi-pencil"></i></a>
                                                </td>
                                                <td>
                                                    <a href="#" onclick="deleteItem(<?php echo e($product->id); ?>)"
                                                        class="btn btn-danger btn-sm"><i class="bi bi-trash"></i></a>
                                                    <form id="<?php echo e($product->id); ?>"
                                                        action="<?php echo e(route('admin.product.destroy', $product->slug)); ?>"
                                                        method="post">
                                                        <?php echo csrf_field(); ?>
                                                        <?php echo method_field('DELETE'); ?>
                                                    </form>
                                                </td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </main>
    <?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.adminlayout', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\example6\example6backend\resources\views/admin/product/index.blade.php ENDPATH**/ ?>