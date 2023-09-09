<footer class="footer green darken-2">
    <div class="container">
        <div class="footer-content">
            <div class="contact-info">
                <center>
                    Touts les droits sont reserve par Zakaria et Hamza &copy; 2023
                </center>
            </div>
            <div class="contact-us">
                <h4>Contactez-nous</h4>
                <form action="contact.php" method="POST" id="contact">
                <label for="name" style="color: white;">Nom :</label>
                <input type="text" id="name" name="name" class="white-text" required>

                <label for="email" style="color: white;">Email :</label>
                <input type="email" id="email" name="email" class="white-text" required>

                <label for="message" style="color: white;">Message :</label>
                <textarea id="message" name="message" rows="4" style="background-color: white; color: black;" required></textarea>

                <button type="submit" class="rounded-button waves-effect waves-light">Envoyer</button>
                </form>
            </div>
        </div>
    </div>
</footer>


<?php $con->close(); ?>
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="<?=$path?>js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<?=$path?>js/materialize.min.js"></script>
<script type="text/javascript" src="<?=$path?>js/script.js"></script>
<script type="text/javascript">
    $(".dropdown-button").dropdown();
    $(".button-collapse").sideNav();
    $('.carousel.carousel-slider').carousel({fullWidth: true});
    $('.carousel').carousel({
        padding: 200
    });
    autoplay()
    function autoplay() {
        $('.carousel').carousel('next');
        setTimeout(autoplay, 4500);
    }
</script>
</body>
</html>
