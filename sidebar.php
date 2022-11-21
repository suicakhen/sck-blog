
<!-- /* AUTHOR */ -->
<div class="author">

	<img src="images/my-photo.jpg" alt="My Photo" class="author-picture" style="height: 120px; padding-top:20px;">  
	<div class="author_info">
    <strong>Sui Ca Khen</strong>
    <small>20056201@tafe.wa.edu.au</small>
    <small><i>"Simple living and high thinking"</i></small>
    </div>
    
</div>
<p class="header_title"><strong>Blog - My Learning Journey</strong> </p>
<h1>Recent Posts</h1>
<hr />

<!-- /* LATEST POSTS */ -->
<ul>
<?php
$stmt = $db->query('SELECT postTitle, postSlug FROM blog_posts_seo ORDER BY postID DESC LIMIT 5');
while($row = $stmt->fetch()){
	echo '<li><a href="viewpost.php?id='.$row['postSlug'].'">'.$row['postTitle'].'</a></li>';
}
?>
</ul>

<!-- /* CATEGORY */ -->
<h1>Categories</h1>
<hr />

<ul>
<?php
$stmt = $db->query('SELECT catTitle, catSlug FROM blog_cats ORDER BY catID DESC');
while($row = $stmt->fetch()){
	echo '<li><a href="catpost.php?postID='.$row['catSlug'].'">'.$row['catTitle'].'</a></li>';
}
?>
</ul>

<!-- /* ARCHIVES */ -->
<h1>Archives</h1>
<hr />

<ul>
<?php
$stmt = $db->query("SELECT Month(postDate) as Month, Year(postDate) as Year FROM blog_posts_seo GROUP BY Month(postDate), Year(postDate) ORDER BY postDate DESC");
while($row = $stmt->fetch()){
    $monthName = date("F", mktime(0, 0, 0, $row['Month'], 10));
    $slug = 'a-'.$row['Month'].'-'.$row['Year'];
    echo "<li><a href='$slug'>$monthName</a></li>";
}
?>
</ul>


<!-- /* TAGS */ -->
<h1>Tags</h1>
<hr />


<ul>
    <?php
    $tagsArray = [];
    $stmt = $db->query('select distinct LOWER(postTags) as postTags from blog_posts_seo where postTags != "" group by postTags');
    while($row = $stmt->fetch()){
        $parts = explode(',', $row['postTags']);
        foreach ($parts as $tag) {
            $tagsArray[] = $tag;
        }
    }

    $finalTags = array_unique($tagsArray);
    foreach ($finalTags as $tag) {
        echo "<li><a href='tagpost.php?id=".$tag."'>".ucwords($tag)."</a></li>";
    }
    ?>
</ul>