
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.amber,( to change whole app BG) we can add Gradient in it as well by putting  DecoratedBox
        // inside the body: then add decoration: BoxDecoration( gradient: LinearGradient( colors: [.....]
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  //Widget is a return type of this function build
  //extends StatelessWidget matlab ye class ek StatelessWidget ka child hai Iska matlab ye widget immutable hai(state change nahi hoti)

  const GradientContainer({super.key}); //constractor
  //Flutter widgets use a key, and we pass it to the parent using super.key
  //super.key is only there because Flutter's StatelessWidget and StatefulWidget constructors expect it.
  //super,key means “Pass the key to the parent widget (StatelessWidget or StatefulWidget).”
  //Key = tag for widget → helps Flutter identify it.
  //With key: Flutter reuses existing widget → faster & memory efficient.
  //Without key: Flutter creates new widget every rebuild → more memory & CPU use.
  //Small apps: not critical
  ////Big apps/lists/animations: keys improve performance

  @override
  //Context is the widget’s address in the app’s UI tree.
  //context = widget ka address tree mein jahan se ye call hua hai.
  //Context = widget ka address; is se widget parent ka data, theme, size, navigation aur inherited info access karta hai (stateless class ko) 

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 8, 44, 252),
            const Color.fromARGB(255, 0, 19, 76),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          "Allah ",
        ),
      ),
    );
  }
}
