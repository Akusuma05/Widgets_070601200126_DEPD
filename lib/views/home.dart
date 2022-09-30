part of 'pages.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saekano"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [Colors.white, Colors.blue])),
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
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      icon: Icon(Icons.favorite,
                          color: (click == false) ? Colors.red : Colors.grey),
                      label: Text(''),
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.all(15),
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
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/1.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/2.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/3.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/4.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                ],
              )),
          Flexible(
            flex: 1,
            child: Container(
              child: const Center(
                  child: Text(
                'Synopsis',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Flexible(
            flex: 4,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  child: const Center(
                      child: Text(
                          'Tomoya Aki, an otaku, has been obsessed with collecting anime and light novels for years, attaching himself to various series with captivating stories and characters. Now, he wants to have a chance of providing the same experience for others by creating his own game, but unfortunately, Tomoya cannot do this task by himself. He successfully recruits childhood friend Eriri Spencer Sawamura to illustrate and literary elitist Utaha Kasumigaoka to write the script for his visual novel, while he directs. Super-group now in hand, Tomoya only needs an inspiration to base his project on, and luckily meets the beautiful, docile Megumi Katou, who he then models his main character after. Using what knowledge he has, Tomoya creates a new doujin circle with hopes to touch the hearts of those who play their game. What he does not realize, is that to invoke these emotions, the creators have had to experience the same feelings in their own lives.')),
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
