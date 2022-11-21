<?php //include config
require_once('../includes/config.php');

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: login.php'); }
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Admin - Edit Category</title>
  <link rel="stylesheet" href="../style/normalize.css">
  <link rel="stylesheet" href="../style/main.css">
</head>
<body>

<div class="wrapper">

	<?php include('menu.php');?>
	<p><a href="categories.php">Categories Index</a></p>

	<h2>Edit Category</h2>


	<?php

	//if form has been submitted process it
	if(isset($_POST['submit'])){

		//collect form data
		extract($_POST);

		//very basic validation
		if($catID ==''){
			$error[] = 'This post is missing a valid id!.';
		}

		if($catTitle ==''){
			$error[] = 'Please enter the title.';
		}

		if(!isset($error)){

			try {

				$catSlug = slug($catTitle);

				//insert into database
				$stmt = $db->prepare('UPDATE blog_cats SET catTitle = :catTitle, catSlug = :catSlug WHERE catID = :catID') ;
				$stmt->execute(array(
					':catTitle' => $catTitle,
					':catSlug' => $catSlug,
					':catID' => $catID
				));

				//redirect to index page
				header('Location: categories.php?action=updated');
				exit;

			} catch(PDOException $e) {
			    echo $e->getMessage();
			}

		}

	}

	?>


	<?php
	//check for any errors
	if(isset($error)){
		foreach($error as $error){
			echo $error.'<br />';
		}
	}

		try {

			$stmt = $db->prepare('SELECT catID, catTitle FROM blog_cats WHERE catID = :catID') ;
			$stmt->execute(array(':catID' => $_GET['id']));
			$row = $stmt->fetch(); 

		} catch(PDOException $e) {
		    echo $e->getMessage();
		}

	?>

	<form action='' method='post'>
		<input type='hidden' name='catID' value='<?php echo $row['catID'];?>'>

		<p><label>Title</label><br />
		<input type='text' name='catTitle' value='<?php echo $row['catTitle'];?>'></p>

		<p><input type='submit' name='submit' value='Update'></p>

	</form>

</div>
<?php include_once "../pages/footer.php"; ?>
</body>
</html>	
</pre>
<p>In admin/index.php the delete code on line 9 will need to include the deletion of categories added to the deleted posts in the blog_post_cats table:</p>

<pre lang="php">
if(isset($_GET['delpost'])){

    $stmt = $db->prepare('DELETE FROM blog_posts_seo WHERE postID = :postID') ;
    $stmt->execute(array(':postID' => $_GET['delpost']));

    //delete post categories.
    $stmt = $db->prepare('DELETE FROM blog_post_cats WHERE postID = :postID');
    $stmt->execute(array(':postID' => $_GET['delpost']));

    header('Location: index.php?action=deleted');
    exit;
}