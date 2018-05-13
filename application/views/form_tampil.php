<!DOCTYPE html>
<html>
<head>
	<title>Tampil Data</title>
</head>
<body>

	<table>
		<th>Tampil Data</th>
		<tr>
			<td>id</td>
			<td>username</td>
			<td>password</td>
			<td>fullname</td>
			<td>level</td>
			<td><input type="submit" name="" value="Kembali"></form></td>
		</tr>

		<?php foreach ($isi->result() as $key);?>

		<tr>
			<td><?php echo $key->id ?></td>
			<td><?php echo $key->username ?></td>
			<td><?php echo $key->password ?></td>
			<td><?php echo $key->fullname ?></td>
			<td><?php echo $key->level ?></td>
			<td><a href="../user/delete <?php echo $key->id ?> "></a>Delete</td>
			<td><a href="../user/update <?php echo $key->id ?> "></a>Update</td>
		</tr>
		
		<?php endforeach ?>
	</table>

</body>
</html>