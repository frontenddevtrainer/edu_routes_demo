import 'package:dio/dio.dart';
import 'package:edu_routes_demo/widgets/application_drawer.dart';
import 'package:flutter/material.dart';
import 'application_appbar.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<dynamic> _posts = [];

  @override
  void initState() {
    super.initState();
    _getPosts();
  }

  Future<void> _getPosts() async {
    final dio = Dio();
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");
    setState(() {
      _posts = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: ApplicationAppBar(
          title: "Posts",
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: const ApplicationDrawer(),
        body: _posts.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  final post = _posts[index];
                  return ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/post-details",
                          arguments: {'id': post["id"]});
                    },
                    title: Text(post["title"]),
                    subtitle: Text(post["body"]),
                  );
                },
              ));
  }
}
