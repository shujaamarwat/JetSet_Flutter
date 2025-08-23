import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/item_place_list_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'destination_places_screen_model.dart';
export 'destination_places_screen_model.dart';

class DestinationPlacesScreenWidget extends StatefulWidget {
  const DestinationPlacesScreenWidget({
    super.key,
    required this.destonation,
  });

  final DestinationsRecord? destonation;

  static String routeName = 'DestinationPlacesScreen';
  static String routePath = '/destinationTopPlacesScreen';

  @override
  State<DestinationPlacesScreenWidget> createState() =>
      _DestinationPlacesScreenWidgetState();
}

class _DestinationPlacesScreenWidgetState
    extends State<DestinationPlacesScreenWidget> {
  late DestinationPlacesScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DestinationPlacesScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // get restorants from AB
      _model.placesFromAB = await action_blocks.getPlacesForDestination(
        context,
        destinationId: widget!.destonation?.reference,
      );
      // set state restorants
      _model.placesLocal = _model.placesFromAB!.toList().cast<PlacesRecord>();
      _model.isLoading = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Builder(
          builder: (context) {
            if (!_model.isLoading) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.backButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: BackButtonWidget(
                            onTap: () async {},
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 30.0, 0.0),
                            child: Text(
                              'Top places to visit in ${valueOrDefault<String>(
                                widget!.destonation?.name,
                                'Destination',
                              )}',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final placesListView = _model.placesLocal.toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: placesListView.length,
                          itemBuilder: (context, placesListViewIndex) {
                            final placesListViewItem =
                                placesListView[placesListViewIndex];
                            return wrapWithModel(
                              model: _model.itemPlaceListViewModels.getModel(
                                placesListViewItem.reference.id,
                                placesListViewIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: ItemPlaceListViewWidget(
                                key: Key(
                                  'Key7wd_${placesListViewItem.reference.id}',
                                ),
                                place: placesListViewItem,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  child: custom_widgets.Loader(
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
