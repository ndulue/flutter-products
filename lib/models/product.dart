import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {

  final String name, description, buttonText, imagePath, price, productInfo;

  Color backgroundColor;

  Product({
      this.name,
      this.description,
      this.backgroundColor,
      this.buttonText,
      this.imagePath,
      this.price,
      this.productInfo});

}

final Product pixel  = new Product(
    name: "Xbox Game Console",
    description: "New Release to the market",
    backgroundColor: Colors.red[100],
    price: "700",
    productInfo: "Xbox is a video gaming brand created and owned by Microsoft. It represents a series of video game consoles developed by Microsoft, with three consoles released in the sixth, seventh, and eighth generations, respectively. The brand also represents applications (games), streaming services, an online service by the name of Xbox Live, and the development arm by the name of Xbox Game Studios",
    buttonText: "Explore",
    imagePath: "assets/xbox.png",
);


final Product pixelStand = new Product(
  name: "Holo Lens",
  description: "Virtual Reality",
  price: "700",
  productInfo: "Explore the most comfortable and immersive mixed reality experience available. See what makes HoloLens 2 the ultimate mixed reality device, with solutions that deliver value instantly. You’ll get all the benefits of using cloud and AI services from Microsoft—including reliability, security, and scalability. offers the most comfortable and immersive mixed reality experience available, with industry-leading solutions that deliver value in minutes—all enhanced by the reliability, security, and scalability of cloud and AI services from Microsoft.",
  backgroundColor: Colors.lightBlue[100],
  buttonText: "Work smarter with HoloLens",
  imagePath: "assets/hololens.png",
);


final Product dayDreamView = new Product(
  name: "Surface 2 Pro",
  productInfo: "Surface Laptop 3 has been redesigned from the inside out to make a bigger impact on productivity. Faster multitasking, greater security and connectivity and beautiful finishes help you do it all.",
  description: "Laptop",
  price: "700",
  backgroundColor: Color(0xFFE0DDFF),
  buttonText: "Learn more",
  imagePath: "assets/laptop.png",
);



final Product stadia = new Product(
  name: "Life Cam",
  description: "New WebCam",
  backgroundColor: Colors.orangeAccent[100],
  price: "700",
  buttonText: "Learn more",
  productInfo: "LifeCam Studio from Microsoft is a high definition webcam with a resolution of 1920 x 1080 allowing for video recordings of up to 1080p. For conducting video calls, the LifeCam Studio supports resolutions of up to 720p, using a compatible video conferencing service.",
  imagePath: "assets/lifecam.png",
);