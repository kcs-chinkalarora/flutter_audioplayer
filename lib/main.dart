import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:just_audio_example/common.dart';
import 'package:just_audio_example/player_screen.dart';
import 'package:just_audio_example/response_model.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'Helpers/config.dart';
import 'audio_service_provider.dart';
import 'audioplayer.dart';
import 'http_main.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:metadata_god/metadata_god.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await startService();
/*  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );*/
 /* await Hive.initFlutter();
  await Hive.openBox('name');*/

  //
  // for (final box in hiveBoxes) {
  //   await openHiveBox(
  //     box['name'].toString(),
  //     limit: box['limit'] as bool? ?? false,
  //   );
  // }
  runApp(MyApp());
}

const hiveBoxes = [
  {'name': 'settings', 'limit': false},
  {'name': 'downloads', 'limit': false},
  {'name': 'stats', 'limit': false},
  {'name': 'Favorite Songs', 'limit': false},
  {'name': 'cache', 'limit': true},
  {'name': 'ytlinkcache', 'limit': true},
];
Future<void> startService() async {
 // await initializeLogging();
  MetadataGod.initialize();
  final audioHandlerHelper = AudioHandlerHelper();
  final AudioPlayerHandler audioHandler =
  await audioHandlerHelper.getAudioHandler();
  GetIt.I.registerSingleton<AudioPlayerHandler>(audioHandler);
  GetIt.I.registerSingleton<MyTheme>(MyTheme());
}
/*
Future<void> openHiveBox(String boxName, {bool limit = false}) async {
  final box = await Hive.openBox(boxName).onError((error, stackTrace) async {
    //Logger.root.severe('Failed to open $boxName Box', error, stackTrace);
    final Directory dir = await getApplicationDocumentsDirectory();
    final String dirPath = dir.path;
    File dbFile = File('$dirPath/$boxName.hive');
    File lockFile = File('$dirPath/$boxName.lock');

    await dbFile.delete();
    await lockFile.delete();
    await Hive.openBox(boxName);
    throw 'Failed to open $boxName Box\nError: $error';
  });
  // clear box if it grows large
  if (limit && box.length > 500) {
    box.clear();
  }
}
*/

class MyApp extends StatelessWidget {
// to set the root of app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'API Demo Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter - API Implementation"),
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Icon(Icons.cancel),
        backgroundColor: Colors.green,
      ),
    );
  }

  FutureBuilder<AlbumModel?> _buildBody(BuildContext context) {
    final HttpService httpService = HttpService();
    return FutureBuilder<AlbumModel?>(
      future: httpService.fetchUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<Tracks>? posts = snapshot.data!.data!.tracks;
          if (posts != null) {
            return _buildPosts(context, posts);
          } else {
            return _buildPosts(context, <Tracks>[]);
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _buildPosts(BuildContext context, List<Tracks> posts) {
    return ListView.builder(
      itemCount: posts.length,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp1(index:index,tracks: posts,)),
              );
            },
            title: Text(
              posts[index].trackDetails!.nameGuj.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(posts[index].trackDetails!.description.toString()),
          ),
        );
      },
    );
  }
}
