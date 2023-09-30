<!-- Include header -->
<?php include 'includes/header.php'; ?>
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<section id="center" class="center_o pt-3 pb-3 bg_light1">
  <div class="container-xl">
    <div class="row center_h1">
      <div class="col-md-12">
        <ul class="mb-0">
          <li class="d-inline-block font_13 col_light me-2"><a class="pe-1" href="<?= base_url() ?>">Home</a> |</li>
          <li class="d-inline-block col_oran font_13">All Category</li>

        </ul>
      </div>
    </div>

  </div>
</section>

<section id="prod_pg" class="pt-4 pb-4">
  <div class="container-xl">
    <div class="row prod_pg1">

      <div class="col-md-12 ">
        <div class="prod_pg1r">
          <div class="prod_pg1r3 mt-4  row">
            <div class="tab-content">
              <div class="tab-pane active" id="home">
                <div class="row offer_1 gy-4">
                  <?php foreach ($categories as $category): ?>
                    <div class="col-md-4">
                      <div class="offer_1i">
                        <div class="grid clearfix prod_h2i1 ">
                          <figure class="effect-jazz mb-2">
                            <a href="<?= base_url('category/' . $category['category_id']); ?>">
                              <img src="<?= base_url('assets/images/upload/category/' . $category['category_image']); ?>"
                                style=" object-fit: cover; height:250px;">
                            </a>

                          </figure>
                          <h5 class="text-capitalize pt-3 text-center">
                            <a href="<?= base_url('category/' . $category['category_id']); ?>"><?= $category['category_name'] ?></a>
                          </h5>
                        </div>
                      </div>
                    </div>
                  <?php endforeach; ?>
                </div>
              </div>
            </div>
          </div>
          <!-- Pagination -->
          <!-- <div class="pages mt-4 row text-center">
            <div class="col-md-12">
              <ul class="mb-0">
                <li><a href="detail.html"><i class="fa fa-chevron-left"></i></a></li>
                <li class="act"><a href="detail.html">1</a></li>
                <li><a href="detail.html">2</a></li>
                <li><a href="detail.html">3</a></li>
                <li><a href="detail.html">4</a></li>
                <li><a href="detail.html">5</a></li>
                <li><a href="detail.html">6</a></li>
                <li><a href="detail.html"><i class="fa fa-chevron-right"></i></a></li>
              </ul>
            </div>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</section>
<?php include 'includes/footer.php'; ?>