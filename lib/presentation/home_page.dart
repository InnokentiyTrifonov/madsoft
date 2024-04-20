import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mad_soft/domain/blocs/extract_point/extract_point_bloc.dart';
import 'package:mad_soft/domain/blocs/remote_repository/remote_repository_bloc.dart';
import 'package:mad_soft/domain/models/table_models/table_model.dart';
import 'package:mad_soft/presentation/Styles/styles.dart';
import 'package:mad_soft/presentation/components/search_field.dart';
import 'package:mad_soft/presentation/map_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  List<TableModel> data = [];

  int curIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (BlocProvider.of<RemoteRepositoryBloc>(context).state is RemoteRepositoryLoaded) {
      data = (BlocProvider.of<RemoteRepositoryBloc>(context).state as RemoteRepositoryLoaded).data;
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEF2FF),
      body: BlocBuilder(
        bloc: context.watch<RemoteRepositoryBloc>(),
        builder: (context, state) {
          switch (state) {
            case RemoteRepositoryLoaded _:
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    systemOverlayStyle: SystemUiOverlayStyle.dark,
                    backgroundColor: Colors.transparent,
                    pinned: true,
                    expandedHeight: MediaQuery.of(context).size.height * 0.19,
                    flexibleSpace: LayoutBuilder(
                      builder: (context, constraints) {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 150),
                          child: constraints.biggest.height <= MediaQuery.of(context).size.height * 0.15
                              ? const CollapsedAppBar()
                              : ExpandedAppBar(
                                  controller: controller,
                                  onChanged: (String value) {
                                    setState(() {
                                      data = state.data
                                          .where((item) => item.title.toLowerCase().contains(value.toLowerCase()))
                                          .toList();
                                    });
                                  },
                                ),
                        );
                      },
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            onTap: () {
                              BlocProvider.of<ExtractPointBloc>(context).add(
                                ExtractPointSelectedTable(selectedTable: data[index]),
                              );

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapPage(
                                          title: data[index].title,
                                        )),
                              );
                            },
                            title: Text(
                              data[index].title,
                              style: title_3,
                            ),
                            subtitle: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Отcнято сегодня:',
                                          style: body,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(data[index].filmed.toString(), style: filmed),
                                            const Text(' / ', style: body),
                                            Text('${data[index].available.toString()} доступно', style: body),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 30),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Съемка займет:',
                                          style: body,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(data[index].needMemory.toString(), style: filmed),
                                            const Text(' / ', style: body),
                                            Text('${data[index].availableMemory.toString()} доступно', style: body),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      childCount: data.length,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  )
                ],
              );

            case RemoteRepositoryError _:
              return Center(
                child: Text(state.error),
              );

            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: navBarLableStyle,
        unselectedLabelStyle: navBarLableStyle,
        selectedItemColor: const Color(0xff4A6FF4),
        unselectedItemColor: const Color(0xff65676E),
        currentIndex: curIndex,
        onTap: (value) => setState(() => curIndex = value),
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              child: Center(
                child: SvgPicture.asset(
                  "assets/objects.svg",
                  colorFilter: ColorFilter.mode(
                      curIndex == 0 ? const Color(0xff4A6FF4) : const Color(0xff65676E), BlendMode.srcIn),
                ),
              ),
            ),
            label: "Объекты",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              child: Center(
                  child: SvgPicture.asset(
                "assets/sets.svg",
                colorFilter: ColorFilter.mode(
                    curIndex == 1 ? const Color(0xff4A6FF4) : const Color(0xff65676E), BlendMode.srcIn),
              )),
            ),
            label: "Сеты",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              child: Center(
                  child: SvgPicture.asset(
                "assets/account.svg",
                colorFilter: ColorFilter.mode(
                    curIndex == 2 ? const Color(0xff4A6FF4) : const Color(0xff65676E), BlendMode.srcIn),
              )),
            ),
            label: "Аккаунт",
          ),
        ],
      ),
    );
  }
}

class ExpandedAppBar extends StatelessWidget {
  const ExpandedAppBar({
    super.key,
    required this.onChanged,
    required this.controller,
  });
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Wrap(
            children: [
              const Row(
                children: [
                  Text(
                    "Объекты",
                    style: title_1,
                  ),
                  Spacer(),
                  Icon(Icons.info_outline),
                  SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 20),
              SearchField(
                controller: controller,
                onChanged: onChanged,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CollapsedAppBar extends StatelessWidget {
  const CollapsedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text("Объекты", style: title_2),
                    Icon(Icons.info_outline),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
