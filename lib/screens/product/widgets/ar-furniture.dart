import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';

class ARFurniture extends StatefulWidget {
  final ARNode model;
  ARFurniture({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  _ARFurnitureState createState() => _ARFurnitureState(model: this.model);
}

class _ARFurnitureState extends State<ARFurniture> {
  final ARNode model;
  
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;
  late ARNode objectNode;

  _ARFurnitureState({required this.model});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ARView(
        onARViewCreated: onARViewCreated,
        planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
      ),
    );
  }

  void onARViewCreated(
    ARSessionManager arSessionManager,
    ARObjectManager arObjectManager,
    ARAnchorManager arAnchorManager,
    ARLocationManager arLocationManager,
  ) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;

    this.arSessionManager.onInitialize(
          showFeaturePoints: false,
          showPlanes: true,
          showWorldOrigin: false,
          handleTaps: false,
        );
    this.arObjectManager.onInitialize();
    this.arObjectManager.addNode(this.model);
  }
}
