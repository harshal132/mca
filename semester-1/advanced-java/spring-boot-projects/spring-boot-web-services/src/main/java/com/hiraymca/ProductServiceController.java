package com.hiraymca;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductServiceController {
	private  static  Map<String,  Product>  productRepo  =  new HashMap<>();
			static  {
				Product  mango  =  new  Product(); 
				mango.setId("1");
				mango.setName("Mango");
				productRepo.put(mango.getId(),  mango);
				
				Product  apple  =  new  Product(); 
				apple.setId("2"); 
				apple.setName("Apple"); 
				productRepo.put(apple.getId(),   apple);
			}
			@RequestMapping(value  =  "/products")
			public  ResponseEntity<Object>  getProduct()  {
				return   new   ResponseEntity<>(productRepo.values(), HttpStatus.OK);
			}

			@RequestMapping(value  =  "/products/{id}",  method  = RequestMethod.PUT)
			public  ResponseEntity<Object> updateProduct(@PathVariable("id")  String  id,  @RequestBody  Product product)  {
				productRepo.remove(id); 
				product.setId(id); 
				productRepo.put(id, product);
				return  new  ResponseEntity<>("Product  is  updated successsfully",  HttpStatus.OK);
			}
			
			@RequestMapping(value  =  "/products/{id}",  method  = RequestMethod.DELETE)
			public   ResponseEntity<Object>   delete(@PathVariable("id") String  id)  {
				productRepo.remove(id);
				return  new  ResponseEntity<>("Product  is  deleted successsfully",  HttpStatus.OK);
			}
			
			@RequestMapping(value  =  "/products",  method  = RequestMethod.POST)
			public   ResponseEntity<Object>   createProduct(@RequestBody Product  product)  {
				productRepo.put(product.getId(), product);
				return  new  ResponseEntity<>("Product  is  created successfully",  HttpStatus.CREATED);
			}

}
