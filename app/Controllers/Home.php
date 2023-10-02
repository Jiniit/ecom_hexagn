<?php

namespace App\Controllers;

use App\Models\Categories;
use App\Models\Products;
use App\Models\Brands;

class Home extends BaseController
{
    public function home()
    {
        $productModel = new Products();
        $categoryModel = new Categories();
        // $data['products'] = $productModel->where('feature_product', 1)->find();
        $data['products'] = $productModel->getFeatureProduct();
        $data['latestProducts'] = $productModel->getAllProduct();
        // print_r($data);exit();

        $data['categories'] = $categoryModel->findAll();
        return view('frontEnd/home', $data);
    }
    public function allProducts()
    {
        $productModel = new Products();
        $categoryModel = new Categories();
        $brandsModel = new Brands();
        $data['brands'] = $brandsModel->findall();
        $data['categories'] = $categoryModel->findAll();
        $data['products'] = $productModel->getAllProduct();
        // $data = [
        //     'products' => $productModel->getAllProduct()->paginate(6),
        //     'pager' => $productModel->pager
        // ];
        return view('frontEnd/allproducts', $data);
    }
    public function pager()
    {
        $productModel = new Products();

        // Pagination configuration
        $perPage = 3; // Number of items per page
        $currentPage = $this->request->getVar('page') ? $this->request->getVar('page') : 1;

        $data = [
            'products' => $productModel->getAllProductPaginated($perPage, $currentPage),
            'pager' => $productModel->pager
        ];

        // $data = [
        //     'products' => $productModel->paginate(3),
        //     'pager' => $productModel->pager
        // ];
        return view('frontEnd/pagerTest', $data);
    }
    public function filterByCategory()
    {

        $selectedCategory = $this->request->getVar('category');
        // echo "selected Category";
        // echo $selectedCategory;exit();
        $productModel = new Products();
        $categoryModel = new Categories();
        $brandsModel = new Brands();
        $data['brands'] = $brandsModel->findall();
        $data['categories'] = $categoryModel->findAll();

        if (empty($selectedCategory)) {
            // No category selected, get all products
            $filteredProducts = $productModel->getAllProducts();
        } else {
            // Filter products by the selected category
            $filteredProducts = $productModel->getProductByCategory($selectedCategory);
        }
        $filteredProducts = $productModel->getProductByCategory($selectedCategory);
        return $this->response->setJSON($filteredProducts);

    }

    public function single_product($id)
    {
        $productModel = new Products();
        $data['product'] = $productModel->getProductById($id);
        $relatedProducts = $productModel
            ->where('category_id', $data['product']->category_id)
            ->where('product_id !=', $id) // Exclude the current product
            ->findAll();

        $data['related_products'] = $relatedProducts;

        // print_r($data);exit();
        // $data['related_product'] = $productModel->where($id);
        return view('frontend/single_product', $data);
    }
    public function all_category()
    {
        $categoryModel = new Categories();
        $data['categories'] = $categoryModel->findAll();
        // print_r($data);exit();
        return view('frontend/allcategory', $data);
    }
    public function single_category($id)
    {
        $productModel = new Products();
        $data['products'] = $productModel->getProductByCategoryId($id);

        // print_r($data);exit();
        return view('frontend/single_category_product', $data);
    }

}