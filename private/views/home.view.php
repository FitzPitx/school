<?php $this->view('includes/header')?>
<?php $this->view('includes/nav')?>

<style>
	h1{
		font-size: 80px;
		color: limegreen;
	}

	a{
		text-decoration: none;
	}

	.card-header{
		font-weight: bold;
	}

	.card{
		min-width: 250px;
	}
</style>
	<div class="container-fluid p-4 shadow mx-auto" style="max-width: 1000px;">
	 
	 	<div class="row justify-content-center ">

	 		<?php if(Auth::access('super_admin')):?>
		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/schools">
		 			<div class="card-header">COLEGIOS</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-graduation-cap"></i>
		 			</h1>
		 			<div class="card-footer">Vista de todos los colegios.</div>
	 				</a>
		 		</div>
		 	<?php endif;?>

		 	<?php if(Auth::access('admin')):?>
		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/users">
		 			<div class="card-header">PERSONAL</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-chalkboard-teacher"></i>
		 			</h1>
		 			<div class="card-footer">Vista al todo el personal.</div>
		 			</a>
		 		</div>
		 	<?php endif;?>

		 	<?php if(Auth::access('reception')):?>
		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/students">
		 			<div class="card-header">ESTUDIANTES</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-user-graduate"></i>
		 			</h1>
		 			<div class="card-footer">vista a todos los estudiantes.</div>
		 			</a>
		 		</div>
		 	<?php endif;?>

		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/classes">
		 			<div class="card-header">CLASES</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-university"></i>
		 			</h1>
		 			<div class="card-footer">Vista a todas las clases.</div>
		 			</a>
		 		</div>

		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/tests">
		 			<div class="card-header">EXAMENES</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-file-signature"></i>
		 			</h1>
		 			<div class="card-footer">Vista a todos los examenes.</div>
		 			</a>
		 		</div>

		 		<?php if(Auth::access('admin')):?>
		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/statistics">
		 			<div class="card-header">ESTADÍSTICAS</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-chart-pie"></i>
		 			</h1>
		 			<div class="card-footer">Vista a todas las estadísticas.</div>
		 			</a>
		 		</div>

		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/settings">
		 			<div class="card-header">OPCIONES</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-cogs"></i>
		 			</h1>
		 			<div class="card-footer">Vista a las opciones.</div>
		 			</a>
		 		</div>
		 		<?php endif;?>

		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/profile">
		 			<div class="card-header">PERFIL</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-id-card"></i>
		 			</h1>
		 			<div class="card-footer">Ver tu perfil.</div>
		 			</a>
		 		</div>

		 		<div class="card col-3 shadow rounded m-4 p-0 border">
	 				<a href="<?=ROOT?>/logout">
		 			<div class="card-header">CERRAR SESIÓN</div>
		 			<h1 class="text-center">
		 				<i class="fa fa-sign-out-alt"></i>
		 			</h1>
		 			<div class="card-footer">Cerrar sesión del sistema.</div>
	 				</a>
		 		</div>

	 	</div>
	</div>
 
<?php $this->view('includes/footer')?>
