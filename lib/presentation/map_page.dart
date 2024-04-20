import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mad_soft/domain/blocs/extract_point/extract_point_bloc.dart';
import 'package:mad_soft/domain/models/point/point.dart';

const iconSize = 24.0;
const maxScale = 4.0;

class MapPage extends StatefulWidget {
  const MapPage({super.key, required this.title});
  final String title;

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  TransformationController controller = TransformationController();

  late final List<Point> data;

  double scale = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    data = (BlocProvider.of<ExtractPointBloc>(context).state as ExtractPointExtracted).points;
  }

  void onInteractionUpdate(ScaleUpdateDetails details) {
    final newActualScale = controller.value.getMaxScaleOnAxis();
    final diff = newActualScale - scale;
    final newScale = scale + diff;
    setState(() {
      scale = newScale;
    });
    if (newScale > maxScale) {
      setState(() {
        scale = maxScale;
      });
    } else if (newScale < 1) {
      setState(() {
        scale = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InteractiveViewer(
        transformationController: controller,
        maxScale: maxScale,
        constrained: false,
        onInteractionUpdate: onInteractionUpdate,
        child: Stack(
          children: [
            Image.asset('assets/map.png'),
            ...data.map(
              (e) => Positioned(
                left: e.x.toDouble() - ((iconSize / scale) / 2),
                top: e.y.toDouble() - ((iconSize / scale) / 2),
                child: SvgPicture.asset(
                  'assets/camera.svg',
                  height: iconSize / scale,
                  width: iconSize / scale,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
