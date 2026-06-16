import 'package:flutter/material.dart';
import 'package:three_dart/three_dart.dart' as three;
import 'package:three_dart/three_dart.dart' hide Material;
import 'package:three_dart/three_dart_helpers/three_dart_helpers.dart' hide Material;

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});
  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> with TickerProviderStateMixin {
  late three.ThreeDart td;
  late three.Mesh _cube;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 10))..repeat();
    _controller.addListener(_rotate);
  }

  void _rotate() {
    if (_cube != null) {
      _cube.rotation.y += 0.01;
      _cube.rotation.x += 0.005;
      td.render();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: three.WebGLRendererWidget(
        onInit: (renderer, camera, scene) {
          td = three.ThreeDart()..scene.add(scene)..camera = camera..renderer = renderer;
          camera.position.setValues(0, 0, 10);
          camera.lookAt(three.Vector3.zero());

          // Add 3D cube model (your Kyaw Aung model)
          _cube = three.Mesh(
            geometry: three.BoxGeometry(width: 2, height: 2, depth: 2),
            material: three.MeshPhongMaterial(color: 0x00D9A5),
          )..position.setValues(0, 0, 0);
          scene.add(_cube);

          // Lights
          scene.add(three.AmbientLight(color: 0xffffff));
          scene.add(three.PointLight(color: 0xffffff, position: three.Vector3(5, 5, 5)));
        },
        onBuild: (_) {},
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
