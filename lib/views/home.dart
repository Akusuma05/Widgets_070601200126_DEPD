part of 'pages.dart';

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
        title: Text("Widgeting"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Flexible(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset('assets/images/profile1.jpg',
                        fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment(0.9, -0.8),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.heart_broken, color: Colors.red),
                      label: Text(''),
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size.fromRadius(12),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/profile1.jpg',
                      width: 90, height: 120),
                  Image.asset('assets/images/profile1.jpg',
                      width: 90, height: 120),
                  Image.asset('assets/images/profile1.jpg',
                      width: 90, height: 120),
                  Image.asset('assets/images/profile1.jpg',
                      width: 90, height: 120)
                ],
              )),
          Flexible(
            flex: 4,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  child: const Center(
                      child: Text(
                    'Test',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  child: const Center(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
                ),
                Container(
                  child: const Center(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
                ),
                Container(
                  child: const Center(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
