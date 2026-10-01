<?php

session_start();

require_once "../includes/auth.php";

require_once "../config/database.php";

$id = isset($_GET['id'])
    ? (int)$_GET['id']
    : 0;

$query = mysqli_query(
    $conn,
    "SELECT * FROM produk
     WHERE id = $id"
);

$produk = mysqli_fetch_assoc($query);

if (!$produk) {

    die("Produk tidak ditemukan.");

}

?>

<!DOCTYPE html>
<html>

<head>

    <title>Edit Produk</title>

    <link rel="stylesheet" href="../assets/style.css">

</head>

<body>

<div class="container">

    <div class="card">

        <h1>Edit Produk</h1>

        <?php include "../includes/flash.php"; ?>

        <form
            action="proses_produk.php"
            method="POST"
            enctype="multipart/form-data"
        >

            <input
                type="hidden"
                name="aksi"
                value="edit"
            >

            <input
                type="hidden"
                name="id"
                value="<?= $produk['id']; ?>"
            >

            <label>Nama Produk</label>

            <input
                type="text"
                name="nama"
                value="<?= htmlspecialchars($produk['nama']); ?>"
                required
            >

            <label>Kategori</label>

            <select name="kategori" required>

                <option value="Kopi Hitam"
                    <?= $produk['kategori'] == 'Kopi Hitam' ? 'selected' : ''; ?>>
                    Kopi Hitam
                </option>

                <option value="Kopi Susu"
                    <?= $produk['kategori'] == 'Kopi Susu' ? 'selected' : ''; ?>>
                    Kopi Susu
                </option>

                <option value="Biji Kopi"
                    <?= $produk['kategori'] == 'Biji Kopi' ? 'selected' : ''; ?>>
                    Biji Kopi
                </option>

            </select>

            <label>Deskripsi</label>

            <textarea
                name="deskripsi"
                rows="5"
                required
            ><?= htmlspecialchars($produk['deskripsi']); ?></textarea>

            <label>Harga</label>

            <input
                type="number"
                name="harga"
                value="<?= $produk['harga']; ?>"
                required
            >

            <label>Stok</label>

            <input
                type="number"
                name="stok"
                value="<?= $produk['stok']; ?>"
                required
            >

            <label>Ganti Gambar</label>

            <input
                type="file"
                name="gambar"
                accept=".jpg,.jpeg,.png,.webp"
            >

            <?php if ($produk['gambar']): ?>

                <p>Gambar saat ini:</p>

                <img
                    src="../uploads/produk/<?= htmlspecialchars($produk['gambar']); ?>"
                    width="150"
                >

            <?php endif; ?>

            <br><br>

            <button
                type="submit"
                class="btn"
            >
                Update Produk
            </button>

            <a
                href="produk.php"
                class="btn"
            >
                Kembali
            </a>

        </form>

    </div>

</div>

</body>

</html>