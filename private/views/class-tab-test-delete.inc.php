
		<div class="card-group justify-content-center">
 		<?php if(isset($test_row) && is_object($test_row)):?>


			 <form method="post">
			 	<h3>¿Estás seguro de eliminar este test?</h3>

			 	<?php if(count($errors) > 0):?>
				<div class="alert alert-warning alert-dismissible fade show p-1" role="alert">
				  <strong>Error:</strong>
				   <?php foreach($errors as $error):?>
				  	<br><?=$error?>
				  <?php endforeach;?>
				  <span  type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  </span>
				</div>
				<?php endif;?>
			
				<label>Nombre del test:</label>
			 	<input readonly class="form-control" value="<?=get_var('test',$test_row->test)?>" type="text" name="test" placeholder="Título del test"><br>
			 	
			 	<label>Descripcion del test:</label>
			 	<textarea readonly name="description" class="form-control" placeholder="Añade una descripción para este test"><?=get_var('description',$test_row->description)?></textarea>
			 	
			 	<br>
			  
			 	<input class="btn btn-danger float-end" type="submit" value="Delete">

			 	<a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=tests">
			 		<input class="btn btn-success" type="button" value="Back">
			 	</a>
			 </form>

			<?php else:?>
				Lo lamentamos, este test no fue encontrado!<br><br><br>

				<a href="<?=ROOT?>/single_class/<?=$row->class_id?>?tab=tests">
			 		<input class="btn btn-success" type="button" value="Back">
			 	</a>
			<?php endif;?>
		</div>