import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text(
          "MedShop",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back,
          weight: 28.0,
          ),
        
        actions:[
         IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
          
         IconButton(
            icon: const Icon(Icons.data_saver_on_outlined),
            tooltip: 'save info',
            onPressed: () {},
          ),
          
        ],
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            // search box
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                ),
                
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: "Search here...",
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
            )

            //end of search box
          ],
        ),
      ),
      
      
      
    );
  }
}
