import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mad_soft/domain/blocs/extract_point/extract_point_bloc.dart';
import 'package:mad_soft/domain/models/point/point.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key, required this.title});
  final String title;

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  TransformationController controller = TransformationController();

  late final List<Point> data;
  double height = 24;
  double width = 24;
  double scale = 1;

  double oldValue = 1;
  double newValue = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    data = (BlocProvider.of<ExtractPointBloc>(context).state as ExtractPointExtracted).points;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InteractiveViewer(
        transformationController: controller,
        maxScale: 4,
        constrained: false,
        onInteractionUpdate: (details) {
          final newActualScale = controller.value.getMaxScaleOnAxis();
          final diff = newActualScale - scale;
          final newScale = scale + diff;
          setState(() {
            scale = newScale;
          });
          if (newScale > 4) {
            setState(() {
              scale = 4;
            });
          } else if (newScale < 1) {
            setState(() {
              scale = 1;
            });
          }
          debugPrint(newActualScale.toString());
        },
        child: Stack(
          children: [
            Image.asset('assets/map.png'),
            ...data.map(
              (e) => Positioned(
                left: e.x.toDouble() - ((width / scale) / 2),
                top: e.y.toDouble() - ((height / scale) / 2),
                child: SvgPicture.asset(
                  'assets/camera.svg',
                  height: height / scale,
                  width: width / scale,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
