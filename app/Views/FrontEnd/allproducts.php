<!-- Include header -->
<?php include 'includes/header.php'; ?>
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<section id="center" class="center_o pt-3 pb-3 bg_light1">
  <div class="container-xl">
    <div class="row center_h1">
      <div class="col-md-12">
        <ul class="mb-0">
          <li class="d-inline-block font_13 col_light me-2"><a class="pe-1" href="#">Home</a> |</li>
          <li class="d-inline-block col_oran font_13">Products</li>
        </ul>
      </div>
    </div>

  </div>
</section>

<section id="prod_pg" class="pt-4 pb-4">
  <div class="container-xl">
    <div class="row prod_pg1">
      <div class="col-md-3">
        <div class="prod_pg1l">
          <!-- <div class="prod_pg1l1">
            <h5>FILTER BY</h5>
            <h6 class="fw-normal mt-3 mb-3">AVAILABILITY</h6>
            <div class="row m-0">
              <div class="form-check col-md-12 col-6">
                <input type="checkbox" class="form-check-input" value="1" name="quantity">
                <label class="form-check-label" for="customCheck1">In stock</label>
              </div>
              <div class="form-check mt-2 col-md-12 col-6">
                <input type="checkbox" class="form-check-input" name="quantity" value="0" id="customCheck1">
                <label class="form-check-label" for="customCheck1">Not available</label>
              </div>
            </div>
            <hr>
          </div> -->

          <div>
            <h5 class="fw-normal mb-3">Category</h5>
            <?php foreach ($categories as $category): ?>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" name="category" value="<?= $category['category_id']; ?>">
                <label class="form-check-label">
                  <?= $category['category_name']; ?>
                </label>
              </div>
            <?php endforeach; ?>
            <hr>
          </div>

          <div>
            <h5 class="fw-normal mb-3">Brands</h5>
            <?php foreach ($brands as $brand): ?>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" name="brand" value="<?= $brand['brand_id']; ?>">
                <label class="form-check-label">
                  <?= $brand['brand_name']; ?>
                </label>
              </div>
            <?php endforeach; ?>
            <hr>
          </div>

          <div class="prod_pg1l1 mt-4">
            <h5>FEATURED PRODUCTS</h5>
            <hr class="line">
            <div class="prod_pg1l1i row">
              <div class="col-md-4 col-4">
                <div class="prod_pg1l1il">
                  <div class="grid clearfix">
                    <figure class="effect-jazz mb-0">
                      <a href="detail.html"><img src="img/12.jpg" class="w-100" alt="abc"></a>
                    </figure>
                  </div>
                </div>
              </div>
              <div class="col-md-8 col-8">
                <div class="prod_pg1l1ir">
                  <h6 class="text-capitalize"><a href="detail.html">Integer nec odio</a></h6>
                  <span class="col_yell">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </span>
                  <h5 class="mt-2 col_oran">$300.00</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-9">
        <div class="prod_pg1r">
          <!-- <div class="prod_pg1r1 row">
            <div class="col-md-12">
              <h5 class="text-uppercase"> Popular Products</h5>
              <hr class="line">
            </div>
          </div> -->
          <!-- <div class="prod_pg1r2 m-0  row">
            <div class="col-md-4 col-sm-6">
              <div class="prod_pg1r2l">
                <ul class="nav nav-tabs mb-0 border-0">
                  <li class="nav-item d-inline-block me-1">
                    <a href="#home" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
                      <span class="d-md-block"><i class="fa fa-th-large"></i></span>
                    </a>
                  </li>
                  <li class="nav-item d-inline-block">
                    <a href="#profile" data-bs-toggle="tab" aria-expanded="true" class="nav-link">
                      <span class="d-md-block"><i class="fa fa-th-list"></i></span>
                    </a>
                  </li>

                </ul>
              </div>
            </div>
            <div class="col-md-8 col-sm-6">
              <div class="prod_pg1r2r pull-right">
                <h6 class="mb-0 d-inline-block float-start me-2 mt-2 font_13 col_light">Sort by:</h6>
                <select name="categories" class="form-select" required="">
                  <option value="">Relevance</option>
                  <option>Price, high to low</option>
                  <option>Price, low to high</option>
                </select>
              </div>
            </div>
          </div> -->
          <div class="prod_pg1r3 mt-4  row">
            <div class="tab-content">
              <div class="tab-pane active" id="home">
                <div id="productDiv" class="prod_h2m row gy-4">
                  <?php $limit = 1; ?>
                  <?php foreach ($products as $product): ?>
                    <?php if ($limit < 10) { ?>
                      <div class="col-md-4">
                        <div class="prod_h2i1 clearfix position-relative">
                          <div class="prod_h2i1i text-center clearfix ">
                            <div class="grid clearfix">
                              <figure class="effect-jazz mb-0">
                                <a href="<?= base_url('/product/single_product/' . $product->product_id) ?>">
                                  <img src="<?= base_url('assets/images/upload/' . $product->product_image) ?>"
                                    class="w-100 " alt="abc" style="object-fit: cover; height:250px;">
                                </a>
                              </figure>
                            </div>
                            <h6 class="text-capitalize mt-3">
                              <a href="<?= base_url('/product/single_product/' . $product->product_id) ?>"><?= $product->product_name ?></a>
                            </h6>
                            <h5 class="mt-2 col_oran">&#8377;
                              <?= $product->product_price ?>
                            </h5>
                            <form action="<?= base_url('/cart/add/' . $product->product_id) ?>" method="post">
                              <h6 class="mb-0 mt-3 pb-3">
                                <input type="hidden" value="<?= $product->product_id ?>" name="product_id">
                                <input type="hidden" value="<?= $product->product_name ?>" name="product_name">
                                <!-- Check if the customer is logged in -->
                                <?php if (session()->has('customer_id')): ?>
                                  <input type="hidden" value="<?= session('customer_id') ?>" name="customer_id">
                                  <input type="hidden" value="<?= session('customer_name') ?>" name="customer_name">
                                  <button type="submit" class="button_1 p-3 pt-2 pb-2">
                                    <i class="fa fa-shopping-basket"></i> Add to Cart
                                  </button>
                                <?php else: ?>
                                  <a href="<?= base_url('customer/login') ?>" class="button_1 p-3 pt-2 pb-2">
                                    <i class="fa fa-sign-in"></i> Login to Add to Cart
                                  </a>
                                <?php endif; ?>
                              </h6>
                            </form>
                          </div>
                          <div class="prod_h2i1i1 pt-2 clearfix position-absolute">
                            <h6 class="mb-0 bg_green d-inline-block p-3 pt-2 pb-2 text-white">
                              <?= $product->category_name ?>
                            </h6>
                          </div>
                        </div>

                      </div>
                    <?php }
                    $limit++; ?>
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
<script>
  $(document).ready(function () {
    $("input[name='category'], input[name='brand'], input[name='quantity']").change(function () {

      var selectedCategories = [];
      var selectedBrands = [];
      var selectedQuantity = [];

      // Loop through all checked checkboxes and collect their values
      $("input[name='category']:checked").each(function () {
        selectedCategories.push($(this).val());
      });

      $("input[name='brand']:checked").each(function () {
        selectedBrands.push($(this).val());
      });
      $("input[name='quantity']:checked").each(function () {
        selectedQuantity.push($(this).val());
      });
      // console.log(selectedCategories);
      // console.log(selectedBrands);
      console.log(selectedQuantity);
      // Send AJAX request to filter by category and brand
      $.ajax({
        url: "<?= base_url('products/filterProducts'); ?>",
        type: "POST",
        data: {
          categories: selectedCategories,
          brands: selectedBrands,
          quantity: selectedQuantity,
          <?= csrf_token() ?>: "<?= csrf_hash() ?>"
        },
        dataType: 'json',
        success: function (data) {
          var productHTML = '';

          // Loop through the filtered products and build the HTML
          $.each(data, function (index, product) {
            productHTML += `
<div class="col-md-4">
<div class="prod_h2i1 clearfix position-relative">
<div class="prod_h2i1i text-center clearfix">
 <div class="grid clearfix">
    <figure class="effect-jazz mb-0">
    <a href="<?= base_url('/product/single_product/') ?>${product.product_id}">
      <img src="<?= base_url('assets/images/upload/') ?>${product.product_image}" class="w-100" alt="abc" style="object-fit: cover; height:250px;">
    </a>
   </figure>
 </div>
 <h6 class="text-capitalize mt-3">
   <a href="<?= base_url('/product/single_product/') ?>${product.product_id}">${product.product_name}</a>
 </h6>
 <h5 class="mt-2 col_oran">&#8377;${product.product_price}</h5>
 <form action="<?= base_url('/cart/add/') ?>${product.product_id}" method="post">
 <h6 class="mb-0 mt-3 pb-3">
  <input type="hidden" value="${product.product_id}" name="product_id">
  <input type="hidden" value="${product.product_name}" name="product_name">
  <?php if (session()->has('customer_id')): ?>
                                    <input type="hidden" value="<?= session('customer_id') ?>" name="customer_id">
                                    <input type="hidden" value="<?= session('customer_name') ?>" name="customer_name">
                                    <button type="submit" class="button_1 p-3 pt-2 pb-2">
                                      <i class="fa fa-shopping-basket"></i> Add to Cart
                                    </button>
  <?php else: ?>
                                    <a href="<?= base_url('customer/login') ?>" class="button_1 p-3 pt-2 pb-2">
                                      <i class="fa fa-sign-in"></i> Login to Add to Cart
                                    </a>
  <?php endif; ?>
  </h6>
</form>
</div>
<div class="prod_h2i1i1 pt-2 clearfix position-absolute">
<h6 class="mb-0 bg_green d-inline-block p-3 pt-2 pb-2 text-white">
${product.category_name}
</h6>
</div>
</div>
</div>`;
          });

          $("#productDiv").html(productHTML);
        },
        error: function (xhr, status, error) {
          console.log("AJAX error:", error);
        }
      });
    });
  });

</script>


<?php include 'includes/footer.php'; ?>