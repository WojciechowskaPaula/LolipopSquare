# Lollipop Square 🍭


Lollipop is an online store app with an authentication based on roles.
In the application there are defined two roles- user and admin. 
To make a purchase, the user should register and after that log in to their account.
Register confirmation occurs using Sendgrid platform - user recives an email with a request to confirm an account.


![Applicationscreenshot](LollipopSquare%20screenshots/User_view.png)


![Applicationscreenshot](LollipopSquare%20screenshots/Admin_view.png)

![Application screenshot](LollipopSquare%20screenshots/Register.png)

## Description

### User
User can search and add different products to the shopping cart. Then he can change them quantity in the shopping cart, before order confirmation (shopping cart was implemented in a session - to prevent products from being removed from the shopping cart after closing the browser).

![Application screenshot](LollipopSquare%20screenshots/Shopping_cart1.png)

![Application screenshot](LollipopSquare%20screenshots/OrderSummary.png)

Additionaly, users in the `Order History` tab can see their current and past orders.

![Application screenshot](LollipopSquare%20screenshots/Order_status.png)


### Admin

As Admin role user has permisions to management existing products and adding new to the shop.
User can manage categories and create new roles.
Furthermore, the application uses API which converts € to another currencies.


![Application screenshot](LollipopSquare%20screenshots/Product_details.png)

Admin can edit products and their photos 👇

![Application screenshot](LollipopSquare%20screenshots/Edit_product_form.png)


## Built With
- .NET 6
- Entity Framework Core 6
- Bootstrap
- HTML5
- CSS3
- Javascript
- Serilog
- [exchengerate API](https://exchangerate.host/#/)
- [Sendgrid](https://sendgrid.com/)
- Inkscape
