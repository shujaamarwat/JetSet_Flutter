import '/components/page_indicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'on_boarding_screen_widget.dart' show OnBoardingScreenWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnBoardingScreenModel extends FlutterFlowModel<OnBoardingScreenWidget> {
  ///  Local state fields for this page.

  int index = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for PageIndicator component.
  late PageIndicatorModel pageIndicatorModel;

  @override
  void initState(BuildContext context) {
    pageIndicatorModel = createModel(context, () => PageIndicatorModel());
  }

  @override
  void dispose() {
    pageIndicatorModel.dispose();
  }
}
