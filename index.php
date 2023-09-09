<?php
include 'include/header.php';
?>
<!-- menue and slider -->
<div class="container">
    <div class="row">
        <div class="col s12 m3">
            <div class="sidebar z-depth-1">
                <div class="head_list green darken-1"><i class="material-icons">menu</i> <?=$lang['cats']?></div>
                <ul class="md-list">
                    <?php
                        $catResult = $con->query("SELECT * FROM `categorie`");
                        while ($cat = $catResult->fetch_assoc()) {
                            echo "<li><a href='categorie.php?catid={$cat['id_cat']}'><i class='material-icons dp48'>done</i> {$cat['title_cat']}</a></li>";
                        }
                    ?>
                </ul>
            </div>
        </div>
        <div class="col s12 m9">
            <div class="carousel carousel-slider center" data-indicators="true">
			    <a href="./categorie.php?catid=1">
                    <div class="carousel-item green white-text" href="#one!">
                        <h2>Vetement</h2>
                        <p class="white-text">
                            Découvrez notre vaste collection de vêtements tendance pour hommes, femmes et enfants. Trouvez le style qui vous convient parmi une sélection de vêtements de haute qualité, allant des tenues décontractées aux tenues élégantes.
                        </p>
                        <button type="submit" class="rounded-button waves-effect waves-light">Découvrez</button>
                    </div>
				</a>
                <a href="./categorie.php?catid=2">
                    <div class="carousel-item green white-text" href="#two!">
                        <h2>Sport</h2>
                        <p class="white-text">
                            Explorez notre gamme d'équipements sportifs de première qualité pour tous les passionnés de sports. Des articles de sport de pointe pour améliorer vos performances et maximiser votre plaisir dans toutes vos activités sportives.
                        </p>
                        <button type="submit" class="rounded-button waves-effect waves-light">Découvrez</button>
                    </div>
                </a>
                
                <a href="./categorie.php?catid=5">
                    <div class="carousel-item green white-text" href="#three!">
                        <h2>Technologie</h2>
                        <p class="white-text">
                        Plongez dans le monde de la technologie avec nos produits innovants. Des appareils électroniques dernier cri aux gadgets high-tech, découvrez des solutions intelligentes pour simplifier votre vie quotidienne.
                        </p>
                        <button type="submit" class="rounded-button waves-effect waves-light">Découvrez</button>
                    </div>
                </a>
                <a href="./categorie.php?catid=6">    
                    <div class="carousel-item green white-text" href="#four!">
                        <h2>Mode homme</h2>
                        <p class="white-text">
                        Affirmez votre style avec notre collection de mode masculine. Des vêtements élégants, des accessoires tendance et des tenues pour chaque occasion. Soyez à la pointe de la mode avec nos articles de qualité.
                        </p>
                        <button type="submit" class="rounded-button waves-effect waves-light">Découvrez</button>
                    </div>
                </a>    
            </div>
        </div>
    </div>
</div>
<!-- top produit -->
<?php
$top_result = $con->query("SELECT *,sum(article_qte) n FROM `produit` INNER JOIN `article` ON produit.p_id=article.p_id INNER JOIN `command` ON article.cmd_id=command.cmd_id GROUP BY article.p_id ORDER BY sum(article_qte) DESC LIMIT 4");
?>
<div class="container produits">
    <h5 class="section_title"><?=$lang['top prp']?></h5>
    <div class="row">
        <?php while ($top_pro = $top_result->fetch_assoc()): ?>
        <div class="col s12 m3">
            <div class="card">
                <a href="product.php?pid=<?=$top_pro['p_id']?>">
                    <div class="card-image waves-effect waves-block waves-light" style="background-image: url('images/produit/thumb/<?=$top_pro['p_thumb']?>');">
                    <?php
                        if($top_pro['p_promo']!=0){
                            echo "<span class=badge>".$top_pro['p_promo']."%</span>";
                        }
                    ?>
                    <a href="?action=addtocard&pid=<?=$top_pro['p_id']?>" class="addtocart waves-effect green"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                    </div>
                </a>
                <div class="card-content">
                    <span class="card-title grey-text text-darken-4">
                    <a href="product.php?pid=<?=$top_pro['p_id']?>" class="green-text"><?=$top_pro['p_title']?></a>
                    <i class="material-icons activator right Points">more_vert</i></span>
                    <div class="prises">
                        <?php
                            if($top_pro['p_promo']!=0){
                                $promo = $top_pro['p_prix']*($top_pro['p_promo']/100);
                                echo ($top_pro['p_prix']-$promo).' DHs';
                                echo "<small> DHs</small> <font>{$top_pro['p_prix']} DHs</font>";
                            }else {
                                echo $top_pro['p_prix'].' DHs';
                            }
                        ?>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4"><?=$top_pro['p_title']?><i class="material-icons right">close</i></span>
                    <p><?=$top_pro['p_desc']?></p>
                </div>
            </div>
        </div>
        <?php endwhile; ?>

</div>
</div>
<!-- top promo -->
<?php
$top_result = $con->query("SELECT * FROM `produit` WHERE p_promo!=0 ORDER BY p_promo DESC LIMIT 4");
?>
<div class="container produits">
    <h5 class="section_title"><?=$lang['top promo']?></h5>
    <div class="row">
        <?php while ($top_pro = $top_result->fetch_assoc()): ?>
        <div class="col s12 m3">
            <div class="card">
                <a href="product.php?pid=<?=$top_pro['p_id']?>">
                    <div class="card-image waves-effect waves-block waves-light" style="background-image: url('images/produit/thumb/<?=$top_pro['p_thumb']?>');">
                    <?php
                        if($top_pro['p_promo']!=0){
                            echo "<span class=badge>".$top_pro['p_promo']."%</span>";
                        }
                    ?>
                    <a href="?action=addtocard&pid=<?=$top_pro['p_id']?>" class="addtocart waves-effect green"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                    </div>
                </a>
                <div class="card-content">
                    <span class="card-title grey-text text-darken-4">
                    <a href="product.php?pid=<?=$top_pro['p_id']?>" class="green-text"><?=$top_pro['p_title']?></a>
                    <i class="material-icons activator right Points">more_vert</i></span>
                    <div class="prises">
                        <?php
                            if($top_pro['p_promo']!=0){
                                $promo = $top_pro['p_prix']*($top_pro['p_promo']/100);
                                echo ($top_pro['p_prix']-$promo).' DHs';
                                echo "<small> DHs</small> <font>{$top_pro['p_prix']} DHs</font>";
                            }else {
                                echo $top_pro['p_prix'].' DHs';
                            }
                        ?>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4"><?=$top_pro['p_title']?><i class="material-icons right">close</i></span>
                    <p><?=$top_pro['p_desc']?></p>
                </div>
            </div>
        </div>
        <?php endwhile; ?>

</div>
</div>
</body>
</html>
<?php
include 'include/footer.php';
?>
