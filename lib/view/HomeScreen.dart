import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Condrooler/Apiconection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
 
  void initState() {
    fetchAlbum();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List>(
            future: fetchAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // return SingleChildScrollView(
                //     scrollDirection: Axis.vertical,
                //     child: Column(
                //       children: [
                //         for (int index = 99;
                //             index < snapshot.data!.length;
                //             index++)
                //           Text(
                //             snapshot.data![index].body.toString(),
                //             style: const TextStyle(
                //                 fontWeight: FontWeight.w900, fontSize: 20),
                //           ),
                //           Column(
                //             children: [
                //               for (int index = 99;
                //             index < snapshot.data!.length;
                //             index++)
                //           Text(
                //             snapshot.data![index].id.toString(),
                //             style: const TextStyle(
                //                 fontWeight: FontWeight.w900, fontSize: 20),
                //           ),
                //             for (int index = 99;
                //             index < snapshot.data!.length;
                //             index++)
                //           Text(
                //             snapshot.data![index].title.toString(),
                //             style: const TextStyle(
                //                 fontWeight: FontWeight.w900, fontSize: 20),
                //           ),
                //             for (int index = 99;
                //             index < snapshot.data!.length;
                //             index++)
                //           Text(
                //             snapshot.data![index].userId.toString(),
                //             style: const TextStyle(
                //                 fontWeight: FontWeight.w900, fontSize: 20),
                //           ),
                //             ],
                //           )
                //       ],
                //     ));

                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Column(
                          children: [
                            Text(snapshot.data![index].id.toString()),
                          ],
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              return const CircularProgressIndicator();
            },
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButton: FloatingActionButton(
        //   child: Text('Next'),
        //   foregroundColor: Color.fromARGB(255, 243, 242, 242),
        //   splashColor: Color.fromARGB(255, 121, 7, 228),
        //   onPressed: () {
        //     (context);
        //   },
        // ),
      ),
    );
  }
}

  

