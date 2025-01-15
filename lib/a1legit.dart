// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'a1_model.dart';
// export 'a1_model.dart';

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'custom_theme.dart';

class A1Page extends StatefulWidget {
  const A1Page({super.key});

  @override
  State<A1Page> createState() => _A1PageState();
}

class _A1PageState extends State<A1Page> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      backgroundColor: Theme.of(context).colorScheme.primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryBackground,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 40, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            // child: Image.asset(
                            //   'assets/images/avatar.png',
                            // ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("hi"
                                  // FFLocalizations.of(context).getText(
                                  //   'ucqlrrlk' /* Welcome, */,
                                  // ),
                                  // style: FlutterFlowTheme.of(context)
                                  //     .headlineSmall
                                  //     .override(
                                  //   fontFamily: 'Lexend',
                                  //   letterSpacing: 0.0,
                                  // ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Text("Welcome Rick!"),
                                ),
                              ],
                            ),
                            Text("hi"
                              // FFLocalizations.of(context).getText(
                              //   'c10wb3ot' /* Your account Details are below... */,
                              // ),
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyMedium
                              //     .override(
                              //   fontFamily: 'Lexend',
                              //   letterSpacing: 0.0,
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("hi"
                        // FFLocalizations.of(context).getText(
                        //   '6z1sm34j' /* Total Balance */,
                        // ),
                        // style: FlutterFlowTheme.of(context)
                        //     .bodyMedium
                        //     .override(
                        //   fontFamily: 'Lexend',
                        //   letterSpacing: 0.0,
                        // ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("hi"
                        // FFLocalizations.of(context).getText(
                        //   'c0dls4u5' /* $25,202 */,
                        // ),
                        // style: FlutterFlowTheme.of(context)
                        //     .displaySmall
                        //     .override(
                        //   fontFamily: 'Lexend',
                        //   fontSize: 32,
                        //   letterSpacing: 0.0,
                        // ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.44,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("hi"
                          // FFLocalizations.of(context).getText(
                          //   '30yef7fj' /* Payroll Due */,
                          // ),
                          // style: FlutterFlowTheme.of(context)
                          //     .bodySmall
                          //     .override(
                          //   fontFamily: 'Lexend',
                          //   letterSpacing: 0.0,
                          // ),
                        ),
                        Text("hi"
                          // FFLocalizations.of(context).getText(
                          //   'zrx9e6tv' /* $12,245 */,
                          // ),
                          // style: FlutterFlowTheme.of(context)
                          //     .displaySmall
                          //     .override(
                          //   fontFamily: 'Lexend',
                          //   letterSpacing: 0.0,
                          // ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("Hi there"),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("hi"
                            // FFLocalizations.of(context).getText(
                            //   '726vrs60' /* Aug 31, 2021 */,
                            // ),
                            // style: FlutterFlowTheme.of(context)
                            //     .headlineSmall
                            //     .override(
                            //   fontFamily: 'Lexend',
                            //   letterSpacing: 0.0,
                            // ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("Hi there"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.44,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("hi"
                          // FFLocalizations.of(context).getText(
                          //   'n87v5tth' /* Marketing Budget */,
                          // ),
                          // style: FlutterFlowTheme.of(context)
                          //     .bodySmall
                          //     .override(
                          //   fontFamily: 'Lexend',
                          //   letterSpacing: 0.0,
                          // ),
                        ),
                        Text("hi"
                          // FFLocalizations.of(context).getText(
                          //   'l5pw5c8c' /* $4,000 */,
                          // ),
                          // style: FlutterFlowTheme.of(context)
                          //     .displaySmall
                          //     .override(
                          //   fontFamily: 'Lexend',
                          //   letterSpacing: 0.0,
                          // ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("Hi there"),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("hi"
                            // FFLocalizations.of(context).getText(
                            //   '9a2ya1la' /* $3,402 */,
                            // ),
                            // style: FlutterFlowTheme.of(context)
                            //     .headlineSmall
                            //     .override(
                            //   fontFamily: 'Lexend',
                            //   letterSpacing: 0.0,
                            // ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("Hi there"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x66000000),
                    offset: Offset(
                      0.0,
                      2,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("hi"
                            // FFLocalizations.of(context).getText(
                            //   'lmo3ko2i' /* Quick Services */,
                            // ),
                            // style: FlutterFlowTheme.of(context)
                            //     .bodyMedium
                            //     .override(
                            //   fontFamily: 'Lexend',
                            //   letterSpacing: 0.0,
                            // ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.24,
                            decoration: BoxDecoration(
                              color:
                              Theme.of(context).colorScheme.primaryBackground,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 12),
                                    child: Icon(
                                      Icons.account_balance_outlined,
                                      color: Theme.of(context).colorScheme.primaryText,
                                      // .primaryText,
                                      size: 36,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text("Hi there"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            // onTap: () async {
                            //   context.pushNamed(
                            //     'transferFunds',
                            //     extra: <String, dynamic>{
                            //       kTransitionInfoKey: TransitionInfo(
                            //         hasTransition: true,
                            //         transitionType:
                            //         PageTransitionType.bottomToTop,
                            //         duration: Duration(milliseconds: 220),
                            //       ),
                            //     },
                            //   );
                            // },
                            child: Container(
                              width:
                              MediaQuery.sizeOf(context).width * 0.24,
                              decoration: BoxDecoration(
                                color:
                                Theme.of(context).colorScheme.primaryBackground,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 12),
                                      child: Icon(
                                        Icons.swap_horiz_outlined,
                                        color: Theme.of(context).colorScheme
                                            .primaryText,
                                        size: 36,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text("Hi there"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            // onTap: () async {
                            //   context.goNamed('MY_Card');
                            // },
                            child: Container(
                              width:
                              MediaQuery.sizeOf(context).width * 0.24,
                              decoration: BoxDecoration(
                                color:
                                Theme.of(context).colorScheme.primaryBackground,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 12),
                                      child: Icon(
                                        Icons.stacked_line_chart_rounded,
                                        color: Theme.of(context).colorScheme
                                            .primaryText,
                                        size: 36,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text("Hi there"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.92,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 8, 0),
                                child: Icon(
                                  Icons.notifications_sharp,
                                  color: Theme.of(context).colorScheme
                                      .primaryText,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Text("hi"
                                  // FFLocalizations.of(context).getText(
                                  //   'nb29ps2o' /* 1 New Alert */,
                                  // ),
                                  // style: FlutterFlowTheme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //   fontFamily: 'Lexend',
                                  //   letterSpacing: 0.0,
                                  // ),
                                ),
                              ),
                              Text("hi"
                                // FFLocalizations.of(context).getText(
                                //   'vgt9s153' /* View Now */,
                                // ),
                                // style: FlutterFlowTheme.of(context)
                                //     .bodySmall
                                //     .override(
                                //   fontFamily: 'Lexend',
                                //   color: FlutterFlowTheme.of(context)
                                //       .primaryBackground,
                                //   letterSpacing: 0.0,
                                // ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text("Hi there"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


