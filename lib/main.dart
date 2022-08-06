import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:test(),
    ));
}
class test extends StatelessWidget {
    TextEditingController t1= TextEditingController();
    TextEditingController t2= TextEditingController();
    TextEditingController t3= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form")),
      body: Column(
        children: [
          TextField(controller: t1),
          TextField(controller: t2),
          TextField(controller: t3),
          ElevatedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;
            String c=t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1==null)
              {
                int sum=n2+n3;
                print("Sum=$sum");
              }
            else if(n2==null)
              {
                  int sum=n1+n3;
                  print("Sum=$sum");
              }
            else if(n3==null)
              {
                  int sum=n1+n2;
                  print("Sum=$sum");
              }
            else{
              int sum=n1+n2+n3;
              print("Sum=$sum");
            }



          }, child: Text("Sum")),
          ElevatedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;
            String c=t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1>n2 && n1>n3)
              {
                print("n1 is max");
              }
            else if(n2>n3)
              {
                  print("n2 is max");

              }
            else
              {
                  print("n3 is max");

              }


          }, child: Text("Maximum")),
          ElevatedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;
            String c=t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1<n2 && n1<n3)
            {
              print("n1 is min");
            }
            else if(n2<n3)
            {
              print("n2 is min");

            }
            else
            {
              print("n3 is min");

            }


          }, child: Text("Minimum")),

        ],
      ),
    );
  }
}
