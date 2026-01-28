//appbar properties

//   leading:  put things on leftmost position,
//   leadingWidth:  default 56.0pixels and use to set custom width for leading widget,
//   automaticallyImplyLeading: by default true automatically insert leading widget ,
//   title:// use to give tile in appbar ,
//   actions: [add more then one icon for actions],
//   automaticallyImplyActions: action list is null and if endDrawer is present then  it automatically inserts an IconButton ,
//   flexibleSpace:  userprofilescreen similar to whatsapp,spotify header image large you scrolldown it shrink,
//   bottom: used to display a widget at the very bottom of the app bar  Google Play Store (Tab Navigation),
//   bottomOpacity: for scrolling animation hide tabbar ,
//   elevation: to display shadow ,
//   scrolledUnderElevation: display shadow  when content scrollup and overlap ,
//   notificationPredicate: ,
//   shadowColor: //give shadow color ,
//   surfaceTintColor: The color that overlayed on the bar when it's in the "scrolled under" stat,
//   shape: give shape of appbar Rounded Bottom Corners,
//   backgroundColor: give appbar background color,
//   foregroundColor: give appbar foreground color ,
//   iconTheme:  used to define the default color, opacity, and size for the toolbar icons,
//   actionsIconTheme: appearance of icons that appear in the actions list of the AppBar ,
//   primary: app bar is being displayed at the top of the screen ,
//   centerTitle: give title in center ,
//   excludeHeaderSemantics:  search bar prevent the system from forcedly wrapping the search bar in "header" semantics, search field is an input area, not a static page heading ,
//   titleSpacing: horizontal spacing around title,
//   toolbarOpacity: controls the opacity of widget within toolbar,
//   toolbarHeight: change height of appbar ,
//   clipBehavior: how appbar content is clipped,
//   toolbarTextStyle: used to define the default text style for the leading and actions widgets within the app bar's toolbar. ,
//   titleTextStyle:TextStyle directly to the AppBar's title widget  ,
//   systemOverlayStyle: control the appearance of system overlays like status bar ,
//   forceMaterialTransparency: by force complete transparent ,
//   useDefaultSemanticsOrder:  controls the accessibility traversal order for the app bar's children.  ,
//   actionsPadding: control the padding of the widgets in the actions list. ,
//   animateColor: automatically animates color changes,Animating AppBar Color on a Specific Event (button press)

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarDemo(),
    );
  }
}

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({super.key});

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: _buildAppBar(
          title: "without back and Actions",
          bgColor: Colors.blueGrey,
          showLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildAppBar(
              title: "Center Title",
              bgColor: Colors.teal,
              center: true,
            ),
            const SizedBox(height: 20),
            _buildAppBar(title: "With Back Button", bgColor: Colors.pink),
            const SizedBox(height: 20),
            _buildAppBar(
              title: "With Single Action",
              bgColor: Colors.green,
              actions: [const Icon(Icons.settings)],
            ),
            const SizedBox(height: 20),
            _buildAppBar(
              title: "Search Toolbar",
              bgColor: Colors.orange,
              actions: [const Icon(Icons.search)],
            ),
            const SizedBox(height: 20),
            _buildAppBar(
              title: "Page Title",
              bgColor: Colors.deepPurple,
              leadingIcon: Icons.menu,
              actions: [
                const Icon(Icons.share),
                const Icon(Icons.search),
                const Icon(Icons.more_vert),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar({
    required String title,
    required Color bgColor,
    bool center = false,
    bool showLeading = true,
    IconData leadingIcon = Icons.arrow_back,
    List<Widget>? actions,
  }) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      backgroundColor: bgColor,
      centerTitle: center,
      automaticallyImplyLeading: false,
      leading: showLeading
          ? IconButton(
              icon: Icon(leadingIcon),
              onPressed: () {},
              color: Colors.white,
            )
          : null,
      iconTheme: const IconThemeData(color: Colors.white, size: 28),
      actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
      actions: actions
          ?.map((icon) => IconButton(onPressed: () {}, icon: icon))
          .toList(),
    );
  }
}
