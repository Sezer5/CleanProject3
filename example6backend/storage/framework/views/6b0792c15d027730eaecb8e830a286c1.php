        <footer class="text-center">
            <div class="container">
                <span class="text-muted small">&copy; 2026 <strong>Admin Yönetim Sistemi</strong>. Tüm hakları saklıdır.</span>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <?php $__sessionArgs = ['success'];
if (session()->has($__sessionArgs[0])) :
if (isset($value)) { $__sessionPrevious[] = $value; }
$value = session()->get($__sessionArgs[0]); ?>
            <script>
                Swal.fire({
                    position: "top-end",
                    icon: "success",
                    title: "<?php echo e(session('success')); ?>",
                    showConfirmButton: false,
                    timer: 1500
                });
            </script>
            <?php unset($value);
if (isset($__sessionPrevious) && !empty($__sessionPrevious)) { $value = array_pop($__sessionPrevious); }
if (isset($__sessionPrevious) && empty($__sessionPrevious)) { unset($__sessionPrevious); }
endif;
unset($__sessionArgs); ?>
            <?php $__sessionArgs = ['error'];
if (session()->has($__sessionArgs[0])) :
if (isset($value)) { $__sessionPrevious[] = $value; }
$value = session()->get($__sessionArgs[0]); ?>
            <script>
                Swal.fire({
                    position: "top-end",
                    icon: "error",
                    title: "<?php echo e(session('error')); ?>",
                    showConfirmButton: false,
                    timer: 2500
                });
            </script>
            <?php unset($value);
if (isset($__sessionPrevious) && !empty($__sessionPrevious)) { $value = array_pop($__sessionPrevious); }
if (isset($__sessionPrevious) && empty($__sessionPrevious)) { unset($__sessionPrevious); }
endif;
unset($__sessionArgs); ?>
            <script>
                function deleteItem(id) {
                    Swal.fire({
                        title: "Are you sure?",
                        text: "You won't be able to revert this!",
                        icon: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#3085d6",
                        cancelButtonColor: "#d33",
                        confirmButtonText: "Yes, delete it!"
                    }).then((result) => {
                        if (result.isConfirmed) {
                            document.getElementById(id).submit();
                        }
                    });
                }
            </script>
            <script>
                document.getElementById('sidebarCollapse').addEventListener('click', function() {
                    document.getElementById('sidebar').classList.toggle('active');
                });
            </script>
        </footer><?php /**PATH C:\xampp\htdocs\example6\example6backend\resources\views/layouts/footer.blade.php ENDPATH**/ ?>