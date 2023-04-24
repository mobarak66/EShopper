<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\SubCategory;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;


class APIController extends Controller
{
    private $categories;
    private $subCategories;
    private $product;
    private $products;
    private $result;
    private $customers;
    private $customer;
    private $orders;
    private $order;
    private $order_details;


    public function getAllCategory()
    {
        $this->categories = Category::all();

        foreach($this->categories as $category)
        {
            $category->sub_category = $category->subcategories;
        }
        return response()->json($this->categories);
    }
    public function getAllTrendingCategory()
    {
        $this->products = Product::orderBy('id','desc')->take(8)->get(['id', 'category_id', 'name', 'selling_price', 'image']) ;
        foreach($this->products as $product)
        {
            $product->image = asset($product->image);
            $product->category_name = $product->category->name;
        }
        return response()->json( $this->products);
    }
    public function getCategoryProduct($id)
    {
        $this->products = Product::where('category_id', $id)->get();
        foreach($this->products as $product)
        {
            $product->image = asset($product->image);
            $product->category_name = $product->category->name;
        }
        return response()->json($this->products);
    }
    public function getSubCategoryProduct($id)
    {
        $this->products = Product::where('sub_category_id', $id)->get();
        foreach($this->products as $product)
        {
            $product->image = asset($product->image);
            $product->sub_category_name = $product->subCategory->name;
        }
        return response()->json($this->products);
    }
    public function getProductById($id)
    {
        $this->product               = Product::find($id);
        $this->product->image        = asset($this->product->image);
        $this->product->other_images = $this->product->otherImages;
        foreach($this->product->other_images as $other_image)
        {
            $other_image->image = asset($other_image->image);
        }
        return response()->json($this->product);
    }
    public function newOrder(Request $request)
    {
        $this->customers = new Customer();
        $this->customers->name       = $request->customer['name'];
        $this->customers->email      = $request->customer['email'];
        $this->customers->password   = bcrypt($request->customer['mobile']);
        $this->customers->mobile     = $request->customer['mobile'];
        $this->customers->address    = $request->customer['address'];
        $this->customers->token      = Str::random('25');
        $this->customers->save();

        $this->orders = new Order();
        $this->orders->customer_id   = $this->customers->id;
        $this->orders->order_total   = $request->orderTotal;
        $this->orders->tax_total    = $request->taxTotal;
        $this->orders->shipping_total = $request->shippingTotal;
        $this->orders->order_date    = date('Y-m-d');
        $this->orders->order_timestamp = strtotime(date('Y-m-d'));
        $this->orders->payment_method    =  $request->customer['paymentType'];
        $this->orders->delivery_address=  $request->customer['address'];
        $this->orders->save();

        foreach ($request->products as $product)
        {
            $this->order_details = new OrderDetail();
            $this->order_details->order_id    = $this->orders->id;
            $this->order_details->product_id  = $product['id'];
            $this->order_details->product_name  = $product['name'];
            $this->order_details->product_price  = $product['price'];
            $this->order_details->product_quantity  = $product['qty'];
            $this->order_details->save();
        }

        return response()->json([
            'success'   => true,
            'id'        => $this->customers->id,
            'name'      => $this->customers->name,
            'token'     => $this->customers->token,
        ]);
    }
    public function logout(Request $request)
    {
       $this->customers = Customer::where('token', $request->token)->first();
       if ($this->customers)
       {
           $this->customers->token = '';
           $this->customers->save();

           return response()->json([
               'success'   => true,
           ]);
       }
    }


}
