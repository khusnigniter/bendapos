<?php
error_reporting(0);
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
  		?>
		<link href="css/style-login.css" rel="stylesheet" type="text/css" />
 		<div id="halaman">
        	<center>
        	<h2>PERINGATAN !</h2>
        	<p class="p-error">
        	Anda Terdeteksi sebagai penyusub web kami,<br /> 
            Kami sarankan Anda mempunyai Akun untuk mengakses halaman Administrator,<br />
            Silahkan klik link dibawah ini untuk login.<br />
  			<a href="index.php"><b>LOGIN</b></a>
        	</p>
        	</center>
        </div>
		<?php
} else {
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Layanan Benda POS</title>
<link href="images/icon.gif" rel="shortcut icon" />
<link href="css/style.css" type="text/css" rel="stylesheet" media="all" />
<script type="text/javascript" src="js/jquery-1.4.js"></script>
</head>

<body>
<div id="halaman">
	<div id="header">
    	<h1>Layanan Benda POS</h1>
        <p>Aplikasi Web Entri Data Materai, Perangko dan Benda POS</p></div>
	<div id="menu">
    	<ul>
        	<a href="?module=home"><li><b>Dashbord</b></li></a>
            <?php 
            $tampil_hak_akses = $_SESSION['leveluser'];
			$idx = $_SESSION['idakses'];
			
            	if($tampil_hak_akses == 1 || $tampil_hak_akses == 3){
			?>
			<?php echo "<a href='?module=root&id=$idx'>"; ?><li>Options Akun <?php echo $_SESSION['namaakses'];?></li></a>
            <?php
            
            
				} else if($tampil_hak_akses == 2){
			?>
			<li><i>Akun <?php echo $_SESSION['namaakses'];?></i></li>
			<?php 	
				} 
			?>
            <a href="logout.php" onClick="return confirm('Yakin keluar Control Panel ?')"><li>Logout</li></a>
        </ul>
    </div>
    <div id="content">
    <?php
	include("config/koneksi.php");
	include("config/fungsi_indotgl.php");
	include("config/class_paging.php");
	include "config/fungsi_rupiah.php";
	//include("config/no_auto.php");
	include("config/num_auto.php");
	date_default_timezone_set("Asia/Jakarta");
	
	if($_GET['module'] == 'home'){
		//Halaman Home
		class content {
			function viewData() {
				$tampil_hak_akses = $_SESSION['leveluser'];
				?>
                <div class="judul"><b>Halaman Dashbord</b></div>
                <?php 
				echo "<h3>Selamat Datang di Control Panel Layanan Benda POS</h3>
				  	 <p>Hallo! <b>$_SESSION[namaakses]</b>, Selamat datang di halaman Control Panel dengan hak akses";
					 if($tampil_hak_akses == 1){
					 	echo " <b>Manager</b>.";
					 } else if($tampil_hak_akses == 2){
					 	echo " <b>Loket</b>.";
					 } else if($tampil_hak_akses == 3){
					 	echo " <b>Admin</b>.";
					 } else {
					 	echo " <b>Akun Tidak Resmi</b>";
					 }
				echo "<br> Silahkan klik menu pilihan yang berada di atas dan samping kanan untuk mengelola content website. </p>";
				?>
                <table>
                <?php
				$sql_materai = mysql_query("SELECT SUM(jml) AS total_materai FROM benda WHERE nama='materai'");
				$rm = mysql_fetch_array($sql_materai); 
				$total_m = number_format($rm['total_materai']);
                ?>
                	<tr><td><b>Informasi Data Hari ini :</b></td><td>&nbsp;</td><td><b>Jumlah</b></td><td>&nbsp;</td></tr>
                    <tr>
                    	<td>Materai</td>
                        <td>:</td>
                        <td><?php echo "$total_m item.";?></td>
                        <td><a href="?module=materai" class="manage_page">Lihat</a></td>
                    </tr>
                <?php
				$sql_perangko = mysql_query("SELECT SUM(jml) AS total_perangko FROM benda WHERE nama='perangko'");
				$rp = mysql_fetch_array($sql_perangko);
				$total_p = number_format($rp['total_perangko']);
				?>
                    <tr>
                    	<td>Perangko</td>
                        <td>:</td>
                        <td><?php echo "$total_p item.";?></td>
                        <td><a href="?module=perangko" class="manage_page">Lihat</a></td>
                    </tr>
				<?php
				$sql_benda = mysql_query("SELECT SUM(jml) AS total_benda FROM benda");
				$rb = mysql_fetch_array($sql_benda);
				$total_b = number_format($rb['total_benda']);
				?>
                    <tr>
                    	<td><b>Semua Benda</b></td>
                        <td>:</td>
                        <td><b><?php echo "$total_b item.";?></b></td>
                        <td><a href="?module=benda" class="manage_page">Lihat</a></td>
                    </tr>
                <?php
				$sql_benda2 = mysql_query("SELECT SUM(total) AS total_uang FROM benda");
				$r_b2 = mysql_fetch_array($sql_benda2);
				$total_b2 = number_format($r_b2['total_uang']);
				?>
                    <tr>
                    	<td><b>Uang</b></td><td>:</td>
                        <td><b><?php echo "Rp. ".$total_b2.",-"; ?></b></td><td>&nbsp;</td>
                    </tr>
                </table>
                <?php 
				echo "<div class='paging'>";
				echo "Login : ";
  				echo tgl_indo(date("Y m d")); 
  				echo " | "; 
  				echo date("H:i:s");
  				echo " WIB";
				echo "</div>";
			}
		}
		$obj = new content();
		$obj->viewData();
		
	} else if($_GET['module'] == 'materai'){
		//Halaman Materai
		include("modul/materai/materai.php");
		
	} else if($_GET['module'] == 'perangko'){
		//Halaman Perangko
		include("modul/perangko/perangko.php");
		
	} else if($_GET['module'] == 'benda'){
		//Halaman Benda
		include("modul/benda/benda.php");
	
	} else if($_GET['module'] == 'jenisbarang'){
		//Halaman Jenis Barang
		include("modul/jenis_barang/jenis_barang.php");
		
	} else if($_GET['module'] == 'root'){
		//Halaman Root
		include("modul/root/root.php");
		
	} else if($_GET['module'] == 'transaksi'){
		//Halaman Transaksi
		include("modul/transaksi/transaksi.php");
		
	} else if($_GET['module'] == 'stok'){
		//Halaman Stok
		include("modul/stok/stok.php");
		
	} else if($_GET['module'] == 'sprint'){
		//Setting Printer Shared
		include("modul/sprint/sprint.php");
				
	} else {
		echo "<p><b>HALAMAN TIDAK DI TEMUKAN ATAU BELUM LENGKAP</b></p>";
	}
	?>
	</div>
    <div id="navigasi">
    	<ul>
        	<li><span><?php for($x=1;$x<=17;$x++){echo " &bull; ";} ?></span></li>
            <a href="?module=transaksi"><li>Transaksi</li></a>
            <?php 
			if($tampil_hak_akses == 1 || $tampil_hak_akses == 3){
			?>
        	<a href="?module=materai"><li>Data Materai</li></a>
            <a href="?module=perangko"><li>Data Perangko</li></a>
            <a href="?module=benda"><li>Data Benda</li></a>
            <a href="?module=jenisbarang"><li>Jenis Benda</li></a>
			<a href="?module=stok"><li>History Stok</li></a>
            <a href="?module=sprint&act=edit&id=1"><li>Setting Printer</li></a>
			<?php
			} else if($tampil_hak_akses == 2){
            ?>
            <li><span><?php for($x=1;$x<=17;$x++){echo " &bull; ";} ?></span></li>
            <?php
			}
			?>
        </ul>
    </div>
    <div id="footer">
    Copyright &copy; 2013 Layanan Benda POS | Develop By <i>Mahasiswa PKN Teknik Informatika UMM 2013</i>
    </div>
</div>
</body>
</html>
<?php
}
?>