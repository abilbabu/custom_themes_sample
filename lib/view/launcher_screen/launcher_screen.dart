import 'package:custom_themes_sample/controller/app_config_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Url launcher"),
      ),
      body: Center(
        child: Container(
             height: 300,
          width: 300,
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://fakestoreapi.com/"));
                  },
                  child: Text(
                    "Fakestore",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w900),
                  )),
              Switch(
                value: context.watch<AppConfigController>().isdark,
                onChanged: (value) {
                  context.read<AppConfigController>().isToggleTheme(value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
