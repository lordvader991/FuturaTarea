import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TodoList(),
  ));
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(109.0),
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
              ),
            ),
            getDetail("SIXTH COLLECTION"),
           const Padding(
              padding:  EdgeInsets.only(top: 20.0, left: 22.0, right: 8.0),
              child: Text(
                "OUTWEAR",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 350,
                      width: 300,
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://pangaia.com/cdn/shop/products/365-Organic-Cotton-Hoodie-Chesnut-Brown-1.png?v=1662625316'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(30.0),
                              child: Text(
                                "NYLON FULL ZIP HOODE",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child: Text(
                                "€180,00",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                     SizedBox(
                      height: 350,
                      width: 300,
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://static.wikia.nocookie.net/cyberpunk/images/4/4f/Jacket_19_basic_06M.png/revision/latest/scale-to-width/360?cb=20211126182440'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(30.0),
                              child: Text(
                                "DENIM TRACK JACKET",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child: Text(
                                "€998,00",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   const SizedBox(width: 10),
                    SizedBox(
                      height: 350,
                      width: 300,
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://northwestshirtcompany.com/cdn/shop/products/NOBitchesbluehoody.png?v=1670121882'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(30.0),
                              child: Text(
                                "SUPREME HOODIE",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child: Text(
                                "€2000,00",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getDetail(String name) {
    final title = Container(
      margin: const EdgeInsets.only(
        top: 230,
        left: 25,
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontFamily: "Roboto",
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );

    final info = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title,
          ],
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 300,
        child: Card(
          color: const Color.fromARGB(255, 157, 237, 241),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  'https://st.focusedcollection.com/13397678/i/650/focused_169050534-stock-photo-man-wearing-hooded-top-headphones.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: info,
            ),
          ),
        ),
      ),
    );
  }
}
