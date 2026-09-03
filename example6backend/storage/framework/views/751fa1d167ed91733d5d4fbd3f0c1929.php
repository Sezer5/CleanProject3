<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Paneli</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <style>
        :root {
            --sidebar-width: 250px;
            --primary-color: #40b27f;
            /* İlk temadaki yeşil tonu */
            --dark-color: #2c3e50;
        }

        body {
            background-color: #f4f7f6;
            min-height: 100vh;
            display: flex;
            /* Sidebar ve Sağ blok yan yana */
            margin: 0;
        }

        /* Sidebar Stil - İlk Tema ile Aynı */
        #sidebar {
            width: var(--sidebar-width);
            min-height: 100vh;
            background-color: var(--dark-color);
            color: white;
            position: fixed;
            transition: all 0.3s;
            z-index: 1000;
        }

        #sidebar .nav-link {
            color: rgba(255, 255, 255, 0.7);
            padding: 12px 20px;
            border-left: 3px solid transparent;
        }

        #sidebar .nav-link:hover,
        #sidebar .nav-link.active {
            color: white;
            background: rgba(255, 255, 255, 0.1);
            border-left: 3px solid var(--primary-color);
        }

        /* Sağ Konteyner Yapısı */
        #right-container {
            margin-left: var(--sidebar-width);
            width: 100%;
            display: flex;
            flex-direction: column;
            /* Header, Main ve Footer alt alta */
            min-height: 100vh;
            transition: all 0.3s;
        }

        /* Header - İlk Tema ile Aynı */
        .navbar {
            background: white;
            border-bottom: 1px solid #e0e0e0;
            padding: 10px 20px;
        }

        /* Footer - Dışarıda ve Bağımsız */
        footer {
            background: white;
            padding: 20px 0;
            border-top: 1px solid #e0e0e0;
            margin-top: auto;
            /* İçerik kısa olsa bile en alta iter */
        }

        /* Sayfa İçi Kartlar */
        .card {
            border: none;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            border-radius: 10px;
        }

        /* Mobil Düzen */
        @media (max-width: 768px) {
            #sidebar {
                margin-left: calc(-1 * var(--sidebar-width));
            }

            #right-container {
                margin-left: 0;
            }

            #sidebar.active {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <?php echo $__env->make('layouts.sidebar', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<div id="right-container">
    <?php echo $__env->make('layouts.header', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
    <?php echo $__env->yieldContent('content'); ?>
    <?php echo $__env->make('layouts.footer', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html><?php /**PATH C:\xampp\htdocs\example6\example6backend\resources\views/layouts/adminlayout.blade.php ENDPATH**/ ?>