part of 'pages.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlname = TextEditingController();
  final ctrlphone = TextEditingController();
  final ctrlcity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlname.dispose();
    ctrlphone.dispose();
    ctrlcity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(24, 26, 24, 16),
          child: Form(
            key: _loginKey,
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  controller: ctrlname,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 3
                        ? 'Name must be at least 8 characters'
                        : null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  ),
                  controller: ctrlphone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 8
                        ? 'Phone Number must be at least 8 digit'
                        : null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "City",
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  controller: ctrlcity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 3
                        ? 'City must be at least 3 characters'
                        : null;
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_loginKey.currentState!.validate()) {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text('Book Now?'),
                                content: Text('Name: ' +
                                    ctrlname.text.toString() +
                                    '\nEmail: ' +
                                    ctrlEmail.text.toString() +
                                    '\nPhone: ' +
                                    ctrlphone.text.toString() +
                                    '\nCity: ' +
                                    ctrlcity.text.toString()),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.of(context)
                                        .pushNamedAndRemoveUntil('/',
                                            (Route<dynamic> route) => false),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ));
                    } else {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text('Booking Failed'),
                                content: Text('Please fill all form field!'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ));
                    }
                  },
                  icon: Icon(Icons.save),
                  label: Text("Book Now"),
                )
              ],
            ),
          ),
        ));
  }
}
