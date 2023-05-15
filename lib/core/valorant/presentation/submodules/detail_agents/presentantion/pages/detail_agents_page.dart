import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/constants/app_theme.dart';
import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';
import 'package:project_zeta/core/valorant/presentation/pages/state/detail_valorant_agent.dart';
import 'package:project_zeta/core/valorant/presentation/pages/store/home_store.dart';

class DetailsAgentsPage extends StatefulWidget {
  final String uuid;
  const DetailsAgentsPage({super.key, required this.uuid});

  @override
  State<DetailsAgentsPage> createState() => _DetailsAgentsPageState();
}

class _DetailsAgentsPageState extends State<DetailsAgentsPage> {
  final homeStore = Modular.get<HomeStore>();
  @override
  void initState() {
    super.initState();
    homeStore.initialDetailState(widget.uuid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        body: Observer(builder: (context) {
          if (homeStore.detailState is SucessDetailValorantAgentState) {
            return NestedScrollView(
                headerSliverBuilder: (context, innerBoxScrolled) => [
                      SliverAppBar(
                        iconTheme: ThemeData.dark().iconTheme,
                        backgroundColor: black,
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
                                      child: Image.network(
                                          homeStore.detailState.agent
                                                  ?.fullPortrait ??
                                              '',
                                          width: 380,
                                          fit: BoxFit.fill)),
                                  Positioned(
                                      top: 42,
                                      left: 18,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                homeStore.detailState.agent
                                                        ?.displayName
                                                        .toString()
                                                        .toUpperCase() ??
                                                    '',
                                                style: const TextStyle(
                                                    color: white2,
                                                    fontSize: 36,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            Chip(
                                              label: Text(
                                                  homeStore.detailState.agent
                                                          ?.developerName
                                                          .toString()
                                                          .toUpperCase() ??
                                                      '',
                                                  style: const TextStyle(
                                                      color: white2)),
                                              //backgroundColor: Color(0xFF273039),
                                              backgroundColor: redAccent,
                                            ),
                                          ])),
                                ],
                              )),
                        ),
                        systemOverlayStyle: SystemUiOverlayStyle.light,
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
                      child: _buildBody(homeStore.detailState.agent),
                    )));
          }
          return const CircularProgressIndicator();
        }));
  }

  Widget _buildBody(AgentModel? agentModel) {
    return Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 6, left: 12, right: 12),
        child: Column(
            children: agentModel?.abilities
                    ?.map(
                      (e) => Container(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: ListTile(
                              title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(e.displayName.toString().toUpperCase(),
                                        style: const TextStyle(
                                            fontSize: 16, color: white2)),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(e.slot.toString().toUpperCase(),
                                              style: const TextStyle(
                                                  fontSize: 14, color: white2))
                                        ])
                                  ]),
                              leading: Image.network(e.displayIcon ?? ''),
                              subtitle: Text(e.description ?? '',
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                      fontSize: 12, color: grey)))),
                    )
                    .toList() ??
                []
            // _buildAbility(),

            ));
  }
}
