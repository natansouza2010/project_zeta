import 'package:flutter/material.dart';

// class DetailsAgentsPage extends StatefulWidget {
//   final String uuid;
//   const DetailsAgentsPage({super.key, required this.uuid});

//   @override
//   State<DetailsAgentsPage> createState() => _DetailsAgentsPageState();
// }

// class _DetailsAgentsPageState extends State<DetailsAgentsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.uuid)),
//       body: const Text("Teste"),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:project_zeta/core/constants/app_theme.dart';

class DetailsAgentsPage extends StatefulWidget {
  final String uuid;
  const DetailsAgentsPage({super.key, required this.uuid});

  @override
  State<DetailsAgentsPage> createState() => _DetailsAgentsPageState();
}

class _DetailsAgentsPageState extends State<DetailsAgentsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white2,
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxScrolled) => [
                  SliverAppBar(
                    //brightness: Brightness.dark,
                    //iconTheme: ThemeData.dark().iconTheme,
                    backgroundColor: white2,
                    expandedHeight: 350,
                    pinned: true,
                    floating: false,
                    centerTitle: true,
                    leading: IconButton(
                        icon: const Icon(CupertinoIcons.back),
                        onPressed: () => Navigator.of(context).pop()),
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      collapseMode: CollapseMode.pin,
                      background: Container(
                          margin: const EdgeInsets.only(top: 56),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  right: -64,
                                  top: 48,
                                  child: Image.asset('assets/jett.png',
                                      width: 380, fit: BoxFit.cover)),
                              Positioned(
                                  top: 42,
                                  left: 18,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("JETT".toString().toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w700)),
                                        const Chip(
                                          label: Text("FOGO",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          //backgroundColor: Color(0xFF273039),
                                          backgroundColor: Color(0xffff4655),
                                        ),
                                      ])),
                            ],
                          )),
                    ),
                  )
                ],
            body: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Container(
                  decoration: const BoxDecoration(
                      color: black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  margin: const EdgeInsets.all(0),
                  child: _buildBody(),
                ))));
  }

  Widget _buildBody() {
    return Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 6, left: 12, right: 12),
        child: Column(
          children: <Widget>[
            _buildAbility(),
            _buildAbility(),
            _buildAbility(),
            _buildAbility()
          ],
        ));
  }

  Widget _buildAbility() {
    return Container(
        padding: const EdgeInsets.only(bottom: 16),
        child: ListTile(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CORRENEGADA".toString().toUpperCase(),
                      style:
                          const TextStyle(fontSize: 16, color: Colors.white)),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    // Visibility(
                    //   visible: ability['type'].toString() != 'Ultimate' &&
                    //       ability['cost'] != 'Free',
                    //   child: Padding(
                    //       padding: const EdgeInsets.only(right: 2, bottom: 2),
                    //       child: Image.asset('assets/Creds.png',
                    //           height: 6, width: 6)),
                    // ),
                    Text("SeiNao".toString().toUpperCase(),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white))
                  ])
                ]),
            leading: Image.asset('assets/vector1.png'),
            subtitle: const Text("Corre",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 12, color: Colors.white60))));
  }
}
