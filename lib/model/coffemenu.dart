class CoffeMenu {
  String nameMenu;
  String priceMenu;
  double price;
  String imageAsset;
  String description;

  CoffeMenu({
    required this.nameMenu,
    required this.priceMenu,
    required this.price,
    required this.imageAsset,
    required this.description,
  });
}

var coffeMenuList = [
  CoffeMenu(
      nameMenu: 'Cappucino',
      priceMenu: '\$3.5',
      price: 3.5,
      imageAsset: 'images/Cappucino.png',
      description:
          ' Cappuccino is a classic Italian coffee made with equal parts espresso, steamed milk, and frothy milk foam. Its rich, creamy texture and strong espresso flavor make it a favorite among coffee enthusiasts who enjoy a balanced blend of espresso and milk.'),
  CoffeMenu(
      nameMenu: 'Ice Tea',
      priceMenu: '\$1.0',
      price: 1.0,
      imageAsset: 'images/IceTea.png',
      description:
          'Iced tea is a refreshing beverage made by steeping tea leaves in cold water and then serving it over ice. It can be made with various types of tea, such as black, green, or herbal teas, and is often flavored with lemon, sugar, or other fruits for added taste. Iced tea is popular during hot weather for its cooling effect and variety of flavors available.'),
  CoffeMenu(
      nameMenu: 'Machiato',
      priceMenu: '\$3.0',
      price: 3.0,
      imageAsset: 'images/Machiato.png',
      description:
          'A macchiato, or espresso macchiato, is a simple yet bold coffee drink. It consists of a shot of espresso "stained" with a small amount of steamed milk, creating a layered look with the espresso at the bottom and a dollop of milk foam on top. This drink is known for its strong espresso flavor, with just a hint of milk to balance the intensity.'),
  CoffeMenu(
      nameMenu: 'Mochacino',
      priceMenu: '\$3.5',
      price: 3.5,
      imageAsset: 'images/Mochacino.png',
      description:
          'A mochaccino, also known as a mocha, combines espresso, steamed milk, and chocolate syrup or cocoa powder. This creates a rich and indulgent flavor profile that appeals to those who enjoy the combination of coffee and chocolate. Mochaccinos are often topped with whipped cream and chocolate drizzle for added sweetness.'),
  CoffeMenu(
      nameMenu: 'Latte',
      priceMenu: '\$3.0',
      price: 3.0,
      imageAsset: 'images/Latte.png',
      description:
          'A latte is a coffee-based drink made with a shot of espresso and steamed milk. It has a creamy texture with a thin layer of frothy milk on top, often served in a glass or ceramic cup. Lattes can be flavored with syrups like vanilla or caramel and are enjoyed for their balanced taste of espresso and milk'),
  CoffeMenu(
      nameMenu: 'Americano',
      priceMenu: '\$1.5',
      price: 1.5,
      imageAsset: 'images/Americano.png',
      description:
          'Americano is a simple yet bold coffee drink made by diluting a shot of espresso with hot water. This results in a similar strength to drip coffee but with a distinct espresso flavor profile. It\'s favored by those who appreciate a straightforward coffee experience with the intensity of espresso and the volume of a larger beverage.'),
  CoffeMenu(
      nameMenu: 'Flat White',
      priceMenu: '\$2.0',
      price: 2.0,
      imageAsset: 'images/FlatWhite.png',
      description:
          'Originating from Australia or New Zealand, a flat white is made with a double shot of espresso and steamed milk, creating a velvety microfoam layer without the froth found in a cappuccino. It offers a balanced coffee flavor with a creamy mouthfeel, perfect for those who enjoy a milky coffee drink that still highlights the espresso\'s richness.'),
  CoffeMenu(
      nameMenu: 'Cortado',
      priceMenu: '\$2.0',
      price: 2.0,
      imageAsset: 'images/Cortado.png',
      description:
          'Cortado is a Spanish coffee consisting of a shot of espresso "cut" with a small amount of steamed milk, typically in a 1:1 or 1:2 ratio. This results in a bold espresso flavor with a smooth, velvety texture from the milk, making it a popular choice for those who prefer a stronger coffee taste without the intensity of a straight espresso.'),
  CoffeMenu(
      nameMenu: 'Affogato',
      priceMenu: '\$3.0',
      price: 3.0,
      imageAsset: 'images/Affogato.png',
      description:
          'An affogato is a classic Italian dessert where a scoop of vanilla gelato or ice cream is "drowned" with a shot of hot espresso, creating a delightful contrast between the hot coffee and cold, creamy ice cream.'),
  CoffeMenu(
      nameMenu: 'Lungo',
      priceMenu: '\$1.5',
      price: 1.5,
      imageAsset: 'images/Lungo.png',
      description:
          'Lungo is an espresso-based drink where more water is passed through the coffee grounds than in a regular espresso, resulting in a slightly larger and milder coffee. It\'s known for its longer extraction time, producing a drink that\'s less intense than espresso but still robust in flavor.'),
  CoffeMenu(
      nameMenu: 'Cold Brew',
      priceMenu: '\$4.0',
      price: 4.0,
      imageAsset: 'images/ColdBrew.png',
      description:
          'Cold brew coffee is brewed using cold water over an extended period, usually 12-24 hours, which results in a smooth, less acidic coffee concentrate. It\'s served chilled or over ice and is favored for its mellow flavor and caffeine kick.'),
  CoffeMenu(
      nameMenu: 'Frappucino',
      priceMenu: '\$3.5',
      price: 3.5,
      imageAsset: 'images/Frappucino.png',
      description:
          ' A Frappuccino is a trademarked blended coffee beverage from Starbucks, typically made with coffee or crème base, ice, and various flavors like mocha or vanilla, topped with whipped cream. It\'s known for its refreshing, creamy texture and is often customizable with additional syrups or toppings.'),
  CoffeMenu(
      nameMenu: 'Breve',
      priceMenu: '\$3.5',
      price: 3.5,
      imageAsset: 'images/Breve.png',
      description:
          'A breve is an espresso-based drink made with steamed half-and-half (cream) instead of milk. It\'s known for its rich and creamy texture, providing a decadent twist to traditional espresso drinks.'),
  CoffeMenu(
      nameMenu: 'Irish Coffe',
      priceMenu: '\$2.5',
      price: 2.5,
      imageAsset: 'images/IrishCoffe.png',
      description:
          'Irish coffee is a cocktail consisting of hot coffee, Irish whiskey, sugar, and topped with cream. It\'s known for its warmth, rich flavors, and creamy texture, often enjoyed as a comforting drink or dessert.'),
  CoffeMenu(
      nameMenu: 'Doppio',
      priceMenu: '\$2.5',
      price: 2.5,
      imageAsset: 'images/Doppio.png',
      description:
          'In Italian, "doppio" means double, and in coffee terms, it refers to a double shot of espresso. It\'s typically served in a small cup and is known for its strong, concentrated flavor, made by extracting finely ground coffee beans under high pressure with hot water, resulting in a rich and intense coffee experience.'),
  CoffeMenu(
      nameMenu: 'Ice Coffe',
      priceMenu: '\$3.5',
      price: 3.5,
      imageAsset: 'images/IceCoffe.png',
      description:
          'Iced coffee is a refreshing beverage made by pouring brewed coffee over ice. It\'s often served sweetened and with milk or cream, making it a popular choice for cooling down on hot days while still enjoying the flavors of coffee.'),
];
