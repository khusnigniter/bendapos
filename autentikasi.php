<?php
include("config/koneksi.php");
	function antiinjection($data){
  		$filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  		return $filter_sql;
	}
	
		$username = antiinjection($_POST['username']);
		$pass     = antiinjection(md5($_POST['password']));

		$login	= mysql_query("SELECT * FROM root WHERE username='$username' AND password='$pass'");
		$ketemu = mysql_num_rows($login);
		$r 		= mysql_fetch_array($login);
		
	// Apabila username dan password ditemukan
	if ($ketemu > 0){
		session_start();
		session_register("idakses");
		session_register("namauser");
  		session_register("namaakses");
  		session_register("passuser");
  		session_register("leveluser");

		$_SESSION['idakses'] 	= $r['id'];
  		$_SESSION['namauser']	= $r['username'];
  		$_SESSION['namaakses']	= $r['nama_root'];
  		$_SESSION['passuser']	= $r['password'];
  		$_SESSION['leveluser']	= $r['hak_akses'];
  
  		header('location:media.php?module=home');
	} else {
  	?>
  		<link href="css/style-login.css" rel="stylesheet" type="text/css" />
  		<div id="halaman">
        	<center>
  			<h2>LOGIN GAGAL!</h2> 
        	<p class="p-error">
        	Username atau Password Anda salah.<br>
        	atau kemungkinan Akun Anda sedang diblokir.<br>
  			<a href="index.php"><b>ULANGI LAGI</b></a>
        	</p>
            </center>
  		</div>
  	<?php
}
?>