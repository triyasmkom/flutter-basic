# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

code dasar bawaan:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


```


```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int counter = 1;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Apps'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // https://docs.flutter.dev/release/breaking-changes/buttons
                ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        setState(() {
                          counter--;
                        });
                      }
                      print(counter);
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                      print(counter);
                    },
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

```

## Stateless dan Stateful
Stateless adalah menampilkan widget yang tidak ada perubahan.
menampilkan aplikasi yang statis.

Stateful adalah menampilkan widget yang ada perubahan, dan merender ulang setiap tampilan ketika ada perubahan.
menampilkan aplikasi yang dinamis.


## Widget Dasar

1. Material App adalah widget dasar yang digunakan untuk membungkus widget-widget yang lain.
    - home dengan scaffold
        - appBar

```dart

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Apps'),
        ),
        body: Center(
          child: Text('Hallo'),
        ),
        // backgroundColor: Colors.purpleAccent[700],
        // backgroundColor: Color.fromARGB(0, 18, 192, 172),
      ),
    );
  }
}


```

## Text Widget

```dart

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Apps'),
        ),
        body: Center(
          child: Text(
            'Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo 1234',
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
                backgroundColor: Colors.amber,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: 10,
                fontFamily: 'Kablammo',
                decorationStyle: TextDecorationStyle.wavy,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.blue
                ),
          ),
        ),
      ),
    );
  }
}
  ```

cara mendaftarkan fonts:
1. Download font dengan file.ttf
2. Buat folder di root project dangan nama fonts
3. Masukkan file.ttf ke folder fonts
4. daftarkan font ke pubspect.yaml
    ```yaml
    - family: Kablammo
      fonts:
        - asset: fonts/Kablammo-Regular.ttf
    ```

## Visible dan Invisible Widget


| Visible                 | Invisible                          |
| ----------------------- | ---------------------------------- |
| TEXT(), APPBAR(),ICON() | ROW(),STACK(), COLUMN(),LISTVIEW() |
| Container               |                                    |

### Column
Digunakan untuk menyusun widget-widget ke bawah. 

```dart


import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.red,
            )
          ]),
    ));
  }
}


  ```

### Row
Digunakan untuk menyusun widget-widget ke samping. 

```dart
  
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 300,
              color: Colors.red,
            )
          ]),
    ));
  }
}
  
  
  ```

### Stack
Digunakan untuk menyusun widget-widget ke depan. 

```dart

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Stack(children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
        ),
        Container(
          width: 75,
          height: 75,
          color: Colors.amber,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        )
      ]),
    ));
  }
}

  ```
## List View
Secara default list view secara vertical jika tidak menambahkan ```scrollDirection: Axis.horizontal``` .


**LV vertical**

Untuk width secara otomatis akan memenuhi seluruh lebar layar.

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.amber,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        )
      ]),
    ));
  }
}

```

**LV Horizontal**

Untuk height secara otomatis akan memenuhi seluruh tinggi layar.

```dart

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.amber,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        )
      ]),
    ));
  }
}


```

Contoh di atas kita menulisnya secara hardcode, kita bisa menulisnya menggunakan variable.

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

List<Widget> myList = [
  Container(
    width: 300,
    height: 300,
    color: Colors.green,
  ),
  Container(
    width: 300,
    height: 300,
    color: Colors.blue,
  ),
  Container(
    width: 300,
    height: 300,
    color: Colors.amber,
  ),
  Container(
    width: 300,
    height: 300,
    color: Colors.red,
  )
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(children: myList),
    ));
  }
}


```


Ada cara lain lagi dalam membuat list view, dengan menggunakan builder.

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

List<Color> myColor = [Colors.black, Colors.amber, Colors.red, Colors.blue];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          }),
    ));
  }
}

```


Ada cara lain lagi, menggunakan separator builder:

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

List<Color> myColor = [Colors.black, Colors.amber, Colors.red, Colors.blue];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 50,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          }),
    ));
  }
}


```

Ada juga dengan widget divider:

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

List<Color> myColor = [Colors.black, Colors.amber, Colors.red, Colors.blue];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          }),
    ));
  }
}

```

List view text:

```dart

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

final List<Color> myColor = [
  Colors.green,
  Colors.amber,
  Colors.red,
  Colors.blue
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Text('Hallooo....');
          }),
    ));
  }
}

```

List view text dengan list generator
```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

final List<Color> myColor = [
  Colors.green,
  Colors.amber,
  Colors.red,
  Colors.blue
];

final List<Widget> myList =
    List.generate(100, (index) => Text('List ke $index'));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return myList[index];
          }),
    ));
  }
}

```


```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

final List<Color> myColor = [
  Colors.green,
  Colors.amber,
  Colors.red,
  Colors.blue
];

final List<Widget> myList = List.generate(
    100,
    (index) => Text(
          'List ke ${index + 1}',
          style: TextStyle(fontSize: 9 + double.parse(index.toString())),
        ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return myList[index];
          }),
    ));
  }
}

```


## List Tile

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

final List<Color> myColor = [
  Colors.green,
  Colors.amber,
  Colors.red,
  Colors.blue
];

final List<Widget> myList = List.generate(
    100,
    (index) => Text(
          'List ke ${index + 1}',
          style: TextStyle(fontSize: 9 + double.parse(index.toString())),
        ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List Tile'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text('Triyas Hevianto Saputro'),
            subtitle: Text(
              'This is sub title ... This is sub title ... This is sub title ... This is sub title ...This is sub title ...',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(),
            trailing: Text('10.00 PM'),
            tileColor: Colors.amber,
            dense: true,
            onTap: () {
              return;
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Triyas Hevianto Saputro'),
            subtitle: Text('This is sub title ...'),
            leading: CircleAvatar(),
            trailing: Text('10.00 PM'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Triyas Hevianto Saputro'),
            subtitle: Text('This is sub title ...'),
            leading: CircleAvatar(),
            trailing: Text('10.00 PM'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Triyas Hevianto Saputro'),
            subtitle: Text('This is sub title ...'),
            leading: CircleAvatar(),
            trailing: Text('10.00 PM'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Triyas Hevianto Saputro'),
            subtitle: Text('This is sub title ...'),
            leading: CircleAvatar(),
            trailing: Text('10.00 PM'),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    ));
  }
}

```

## Image Widget

Untuk menampilkan gambar pada sebuah aplikasi. 

**Jenis Provider Image:**
|         |                                         |
| ------- | --------------------------------------- |
| Asset   | Sumber gambar yang berada di aplikasi.  |
| Network | Sumber gambar yang berasal dari URL.    |
| File    | Sumber gambar berasal dari file.        |
| Memory  | Sumber gambar berasal dari memory card. |


**Kecepatan provider:**

```

Memory --> Asset --> File --> Network

------------------------------------->
cepat                           lambat

```


Image dari Asset atau Network

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('List Tile'),
            ),
            body: Center(
              child: Container(
                width: 250,
                height: 300,
                color: Colors.amber,
                child: Image.network("https://picsum.photos/200/300",
                    fit: BoxFit.cover),
                // child:
                //     Image.asset("images/Asus-E410MA-01.jpg", fit: BoxFit.cover),
                // child: Image(
                //   image: AssetImage("images/Asus-E410MA-01.jpg"),
                //   // image: NetworkImage("https://picsum.photos/200/300"),
                //   fit: BoxFit.cover,
                // ),
              ),
            )));
  }
}


```

## Extract Widget

Klik kanan pada widget, pilih refactor, kemudian pilih extract widget.

Link image percobaan: https://picsum.photos/,

Link data palsu: https://pub.dev/packages/faker

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Extract Widget')),
        body: ListView(
          children: [
            ChatItem(),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text('Name'),
      subtitle: Text('Descript'),
      trailing: Text('10.02 PM'),
    );
  }
}
```


Membuat data palsu: https://pub.dev/packages/faker

masukkan ke depedensi pubspec.yaml:

```yaml
name: flutter_application_1
description: A new Flutter project.
# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number is used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# In Windows, build-name is used as the major, minor, and patch parts
# of the product and file versions while build-number is used as the build suffix.
version: 1.0.0+1

environment:
  sdk: '>=3.0.3 <4.0.0'

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
# consider running `flutter pub upgrade --major-versions`. Alternatively,
# dependencies can be manually updated by changing the version numbers below to
# the latest version available on pub.dev. To see which dependencies have newer
# versions available, run `flutter pub outdated`.
dependencies:
  flutter:
    sdk: flutter
  faker: ^2.1.0

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  
  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^2.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - images/Asus-E410MA-01.jpg
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/assets-and-images/#resolution-aware

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/assets-and-images/#from-packages

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  fonts:
    - family: Kablammo
      fonts:
        - asset: fonts/Kablammo-Regular.ttf
        # - asset: fonts/Schyler-Italic.ttf
        #   style: italic
    # - family: Schyler
    #   fonts:
    #     - asset: fonts/Schyler-Regular.ttf
    #     - asset: fonts/Schyler-Italic.ttf
    #       style: italic
    # - family: Trajan Pro
    #   fonts:
    #     - asset: fonts/TrajanPro.ttf
    #     - asset: fonts/TrajanPro_Bold.ttf
    #       weight: 700
  
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/custom-fonts/#from-packages

```
Kode hasil extract Widget

```dart
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Extract Widget')),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ChatItem(
                imageUrl: 'https://picsum.photos/id/$index/200/300',
                title: faker.person.name(),
                subTitle: faker.lorem.sentence(),
              );
            }),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const ChatItem(
      {required this.imageUrl, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(
        subTitle,
        maxLines: 2,
      ),
      trailing: Text('10.02 PM'),
    );
  }
}


```

## Penggunaan Statefull

**Increment dengan stateless**

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 1;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Apps'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // https://docs.flutter.dev/release/breaking-changes/buttons
                ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        counter--;
                      }

                      print(counter);
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      counter++;
                      print(counter);
                    },
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

```


cara merubah menjadi stateful tinggal refactor stateless ke stateful.

```dart

```


## Mapping List

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": 'Triyas',
      'Age': 23,
      'favColor': [
        'Black',
        'Red',
        'Amber',
        'Black',
        'Red',
        'Amber',
        'Black',
        'Red',
        'Amber'
      ]
    },
    {
      "Name": 'Hevianto',
      'Age': 26,
      'favColor': [
        'Black',
        'Red',
        'Amber',
        'Black',
        'Red',
        'Amber',
        'Black',
        'Red',
        'Amber'
      ]
    },
    {
      "Name": 'Hevianto',
      'Age': 26,
      'favColor': ['Black', 'Red', 'Amber']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mapping List'),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data['favColor'];
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Row
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name ${data['Name']}'),
                              Text('Age ${data['Age']}')
                            ],
                          ),
                        ],
                      ),
                      //favColor
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: (Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: myFavColor.map((color) {
                              return Container(
                                color: Colors.amber,
                                margin: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 8),
                                padding: EdgeInsets.all(10),
                                child: Text('$color'),
                              );
                            }).toList(),
                          )))
                    ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

```

## Date Format

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tanggal Format'),
        ),
        body: Center(
            child: Text(
          // DateTime(2021, 12, 31, 14, 55, 43).toString(),
          DateTime.now().toString(),
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}

```

Pertama kita tambahkan terlebih dahulu depedensinya di file ```pubspec.yml``` : https://pub.dev/packages/intl

dokumentasi: https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html


```dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tanggal Format'),
        ),
        body: Center(
            child: Text(
          // DateTime(2021, 12, 31, 14, 55, 43).toString(),
          // DateTime.now().toString(),
          // DateFormat.yMMMMEEEEd().format(DateTime.now()),
          DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}

```

## App Bar

```dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.amber),
          leadingWidth: 100,
          title: Container(
            // width: 45,
            height: 30,
            color: Colors.pink,
          ),
          centerTitle: true,
          actions: [
            Container(
              width: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              color: Colors.green,
            )
          ],
          flexibleSpace: Container(
            color: Colors.grey,
            // width: 10,
            // height: 10,
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: (Container(
                height: 20,
                width: 200,
                color: Colors.black,
              ))),
        ),
        body: Center(
            child: Text(
          // DateTime(2021, 12, 31, 14, 55, 43).toString(),
          // DateTime.now().toString(),
          // DateFormat.yMMMMEEEEd().format(DateTime.now()),
          DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}

```

## Tab Bar

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text('My Apps'),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: DefaultTabController(
                length: 3,
                child: TabBar(tabs: [
                  Tab(
                    text: 'tab 1',
                  ),
                  Tab(
                    text: 'tab 2',
                  ),
                  Tab(
                    text: 'tab 3',
                  ),
                ]))),
      )),
    );
  }
}

```


```dart

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
          title: Text('My Apps'),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: DefaultTabController(
                  length: 4,
                  child: TabBar(tabs: [
                    Tab(
                      icon: Icon(
                        Icons.photo,
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.add_a_photo),
                    ),
                    Tab(
                      text: 'tab 3',
                    ),
                    Tab(
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image(
                            image: NetworkImage(
                                'https://picsum.photos/seed/picsum/200/300')),
                      ),
                    ),
                  ]))),
        )),
      ),
    );
  }
}

```


```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        icon: Icon(
          Icons.photo,
        ),
      ),
      Tab(
        icon: Icon(Icons.add_a_photo),
      ),
      Tab(
        text: 'tab 3',
      ),
      Tab(
        child: Container(
          width: 50,
          height: 50,
          child: Image(
              image: NetworkImage('https://picsum.photos/seed/picsum/200/300')),
        ),
      ),
    ];
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
            appBar: AppBar(
          title: Text('My Apps'),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child:
                  DefaultTabController(length: 4, child: TabBar(tabs: myTab))),
        )),
      ),
    );
  }
}

```


```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        text: 'Image',
        icon: Icon(
          Icons.photo,
        ),
      ),
      Tab(
        text: 'Photo',
        icon: Icon(Icons.add_a_photo),
      ),
      Tab(
        text: 'Order',
        icon: Icon(Icons.shopping_bag_sharp),
      ),
    ];
    List<Widget> tabBarView = [
      Center(
        child: Text(
          'Text 1',
          style: TextStyle(fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          'Text 2',
          style: TextStyle(fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          'Text 3',
          style: TextStyle(fontSize: 20),
        ),
      )
    ];
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Apps'),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              tabs: myTab,
              // indicatorColor: Colors.black,
              // indicatorWeight: 5,
              // indicatorPadding: EdgeInsets.all(10),

              // Custom indikator
              indicator: BoxDecoration(
                  color: Colors.amber,
                  // borderRadius: BorderRadius.circular(25),
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5))),
            ),
          ),
          body: TabBarView(children: tabBarView),
        ),
      ),
    );
  }
}


```


## Fitur Text Field

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fitur Text Field'),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      autocorrect: false,
                      autofocus: true,
                    ),
                    TextField(
                      autocorrect: true,
                      autofocus: true,
                      enableSuggestions: true,
                      enableInteractiveSelection: true,
                      // enabled: true,

                      // Password ****
                      //obscureText: true,
                      //obscuringCharacter: '*',

                      // text input
                      keyboardType: TextInputType.phone,

                      readOnly: true,
                    )
                  ],
                ))),
      ),
    );
  }
}

```

## Dekorasi Text Field

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fitur Text Field'),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      autocorrect: true,
                      autofocus: true,
                      enableSuggestions: true,
                      enableInteractiveSelection: true,
                      // enabled: true,

                      // Password ****
                      //obscureText: true,
                      //obscuringCharacter: '*',

                      // text input
                      keyboardType: TextInputType.phone,

                      readOnly: true,
                    ),
                    TextField(
                      showCursor: true,

                      cursorColor: Colors.red,
                      // cursorWidth: 10,
                      // cursorHeight: 25,
                      // cursorRadius: Radius.circular(20),
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      // textCapitalization: TextCapitalization.characters,
                      // textCapitalization: TextCapitalization.words,
                      textCapitalization: TextCapitalization.none,
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                      decoration: InputDecoration(
                          fillColor: Colors.amber,
                          filled: true,
                          icon: Icon(Icons.person),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink)),

                          // prefix: Icon(Icons.person_add, size: 35),
                          prefixText: 'Name: ',
                          // prefix: Icon(Icons.person)
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: null,
                          ),
                          hintText: 'Please input your name',
                          labelText: 'Fullname',
                          labelStyle: TextStyle(color: Colors.amber)),
                    ),
                  ],
                ))),
      ),
    );
  }
}

```

## Menggunakan Text Field

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController myController =
        TextEditingController(text: 'Initial');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextField(
            controller: myController,
            // onChanged: (value) {
            //   print(value);
            // },

            onSubmitted: (value) {
              print(value);
            },

            onEditingComplete: () {
              print('Edit Sukses');
            },
          ),
        )),
      ),
    );
  }
}

```


```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController myController =
        TextEditingController(text: 'Initial');
    String result = '';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: myController,
                // onChanged: (value) {
                //   print(value);
                // },

                onSubmitted: (value) {
                  print(value);
                  setState(() {
                    result = value;
                  });
                },

                onEditingComplete: () {
                  print('Edit Sukses');
                },
              ),
              Text('Hasil Input: $result')
            ],
          ),
        )),
      ),
    );
  }
}


```