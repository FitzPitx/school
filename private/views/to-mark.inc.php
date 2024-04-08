<div class="card-group justify-content-center">

<div class="table-responsive container-fluid p-0" >
	<table class="table table-striped table-hover">
		<tr><th></th><th>Nombre del test</th><th>Estudiante</th><th>Fecha de subido</th>
			<th>Respondido</th>
			<th>Calificado</th>
			<th></th>
		</tr>
		<?php if(isset($test_rows) && $test_rows):?>
			 
			<?php foreach ($test_rows as $test_row):?>
			 
			 <tr>
			 	<td>
			 		<?php if(Auth::access('lecturer')):?>
			 		<a href="<?=ROOT?>/mark_test/<?=$test_row->test_id?>/<?=$test_row->user->user_id?>">
			 			<button class="btn btn-sm btn-primary">Calificar este test<i class="fa fa-chevron-right"></i></button>
			 		</a>
			 		<?php endif;?>
			 	</td>
			 	<td><?=$test_row->test_details->test?></td>
			 	<td><?=$test_row->user->firstname?> <?=$test_row->user->lastname?></td>
			 	<td><?=get_date($test_row->submitted_date)?></td>

			 	<td>
			 		<?php 
			 			$percentage = get_answer_percentage($test_row->test_id,$test_row->user_id);
			 		?>
 					<?=$percentage?>%
			 	</td>
			 	<td>
			 		<?php $marked_percentage = get_mark_percentage($test_row->test_id,$test_row->user_id)?>
			 		<?=$marked_percentage?>%
			 	</td>
				<td>
			 		<?php if(can_take_test($test_row->test_id)):?>
			 		<a href="<?=ROOT?>/take_test/<?=$test_row->test_id?>">
			 		 <button class="btn btn-sm btn-primary">Realizar el test</button>
			 		</a>
			 		<?php endif;?>

			 	</td>

			 </tr>

 			<?php endforeach;?>
			<?php else:?>
				<tr><td colspan="6"><center>No encontramos test por el momento</center></td></tr>
			<?php endif;?>

	</table>
</div>
</div>