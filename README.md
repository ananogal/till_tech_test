Till tech test
==============

![a till](/images/till.jpg)

We want to sell tills to local hipster coffee shop who are finally embracing the 21st century. We need a new till to replace their vintage machines - unfortunately, hipster staff are too cool to learn a new system, so we need you to build something that they will understand.

Specification
-------------

This is what a sample receipt looks like:

![a receipt](/images/receipt.jpg)


Version 1
---------

Implement a system that contains the business logic to produce receipts similar to this. A sample `.json` file has been provided with the list of products sold at this particular coffee shop.

Here are some sample orders - whether you use this information is up to you:

> **Jane**
> 2 x Cafe Latte  
> 1 x Blueberry Muffin  
> 1 x Choc Mudcake  
>
> **John**
> 4 x Americano  
> 2 x Tiramisu  
> 5 x Blueberry Muffin  

Your receipt must calculate and show the correct amount of tax (in this shop's case, 8.64%). Do not worry about calculating discounts at this point!

Version 2
---------

Add functionality to handle discounts - in this example, a 5% discount on orders over $50, and a 10% muffin discount.

Version 3
---------

Implement an user interface that can actually be used as a till.
