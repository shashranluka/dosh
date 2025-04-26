import 'package:flutter/material.dart'; // Flutter-ის ძირითადი ვიჯეტების ბიბლიოთეკა

void main() {
  runApp(const MyApp()); // აპლიკაციის გაშვების წერტილი
}

class MyApp extends StatelessWidget { // StatelessWidget-ი, რომელიც აპლიკაციის ძირითადი სტრუქტურაა
  const MyApp({super.key}); // კონსტრუქტორი, რომელიც იღებს უნიკალურ key-ს

  @override
  Widget build(BuildContext context) { // აპლიკაციის UI-ს აგება
    return MaterialApp(
      debugShowCheckedModeBanner: false, // აპლიკაციის ზედა მარჯვენა კუთხეში "DEBUG" ბანერის გამორთვა
      home: Scaffold(
        appBar: AppBar( // AppBar ვიჯეტი, რომელიც ქმნის navbar-ს
          backgroundColor: Colors.blue[900], // მუქი ლურჯი ფერი navbar-ისთვის
          leading: Padding( // მარცხენა მხარეს ლოგოს დამატება
            padding: const EdgeInsets.all(8.0), // ლოგოს გარშემო სივრცე
            child: Image.asset( // ლოგოს გამოსახულება
              'assets/logo.png', // ლოგოს ფაილის გზა
              height: 40, // ლოგოს სიმაღლე
            ),
          ),
          centerTitle: true, // წარწერის ცენტრში განთავსება
          title: const Text( // წარწერა AppBar-ის ცენტრში
            'დ  ო  შ', // Navbar-ის სათაური
            style: TextStyle(
              color: Colors.white, // თეთრი ფერი წარწერისთვის
              fontSize: 20, // წარწერის ზომა
              fontWeight: FontWeight.bold, // წარწერის სქელი სტილი
            ),
          ),
        ),
        body: Column( // ძირითადი კონტენტი
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // ელემენტების განაწილება
          children: [
            Expanded( // ღილაკის ვერტიკალურად ცენტრში განთავსება
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // მწვანე ფერი ღილაკისთვის
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // ღილაკის ზომების გაზრდა
                  ),
                  onPressed: () {
                    // აქ შეგიძლიათ დაამატოთ ღილაკის ფუნქციონალი
                  },
                  child: const Text(
                    '?  ?  ?', // ღილაკის წარწერა
                    style: TextStyle(
                      color: Colors.white, // თეთრი ფერი ტექსტისთვის
                      fontSize: 24, // ტექსტის ზომის გაზრდა
                      fontWeight: FontWeight.bold, // ტექსტის სქელი სტილი
                    ),
                  ),
                ),
              ),
            ),
            Container( // Footer-ის კონტეინერი
              color: Colors.green[900], // მუქი მწვანე ფერი footer-ისთვის
              height: 70, // Footer-ის სიმაღლე
              alignment: Alignment.center, // ელემენტების ცენტრში განლაგება
              child: Row( // Footer-ის შიგნით ლოგოების განლაგება
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ლოგოების თანაბარი განაწილება
                children: [
                  // Image.asset('assets/facebook.png', height: 30), // Facebook ლოგო
                  // Image.asset('assets/gmail.png', height: 30), // Gmail ლოგო
                  // Image.asset('assets/github.png', height: 30), // GitHub ლოგო
                  // Image.asset('assets/linkedin.png', height: 30), // LinkedIn ლოგო
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}