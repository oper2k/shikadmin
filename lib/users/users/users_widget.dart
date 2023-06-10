import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/pages/search/search_widget.dart';
import '/users/user/user_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'users_model.dart';
export 'users_model.dart';

class UsersWidget extends StatefulWidget {
  const UsersWidget({Key? key}) : super(key: key);

  @override
  _UsersWidgetState createState() => _UsersWidgetState();
}

class _UsersWidgetState extends State<UsersWidget> {
  late UsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.navMenuModel,
                updateCallback: () => setState(() {}),
                child: NavMenuWidget(),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Пользователи',
                            style: FlutterFlowTheme.of(context).headlineLarge,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 8,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: FutureBuilder<List<UsersRow>>(
                                  future: UsersTable().queryRows(
                                    queryFn: (q) => q,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    List<UsersRow> usersQueryUsersRowList =
                                        snapshot.data!;
                                    return Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1.0,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 6.0,
                                            color: Color(0x1A000000),
                                            offset: Offset(0.0, 0.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child:
                                          FutureBuilder<List<UsersCoursesRow>>(
                                        future: UsersCoursesTable().queryRows(
                                          queryFn: (q) => q.in_(
                                            'user_id',
                                            usersQueryUsersRowList
                                                .map((e) => e.id)
                                                .toList(),
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersCoursesRow>
                                              usersCoursesQueryUsersCoursesRowList =
                                              snapshot.data!;
                                          return Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 20.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 18.0),
                                                    child: wrapWithModel(
                                                      model: _model.searchModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child: SearchWidget(),
                                                    ),
                                                  ),
                                                  if (_model
                                                              .searchModel
                                                              .searchfieldController
                                                              .text ==
                                                          null ||
                                                      _model
                                                              .searchModel
                                                              .searchfieldController
                                                              .text ==
                                                          '')
                                                    Flexible(
                                                      child: Builder(
                                                        builder: (context) {
                                                          final usersQueryChild =
                                                              usersQueryUsersRowList
                                                                  .toList();
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: List.generate(
                                                                  usersQueryChild
                                                                      .length,
                                                                  (usersQueryChildIndex) {
                                                                final usersQueryChildItem =
                                                                    usersQueryChild[
                                                                        usersQueryChildIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .userModels1
                                                                        .getModel(
                                                                      usersQueryChildIndex
                                                                          .toString(),
                                                                      usersQueryChildIndex,
                                                                    ),
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    updateOnChange:
                                                                        true,
                                                                    child:
                                                                        UserWidget(
                                                                      key: Key(
                                                                        'Keydi0_${usersQueryChildIndex.toString()}',
                                                                      ),
                                                                      usersRow:
                                                                          usersQueryChildItem,
                                                                      usersCoursesRowList:
                                                                          usersCoursesQueryUsersCoursesRowList,
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  if (_model
                                                              .searchModel
                                                              .searchfieldController
                                                              .text !=
                                                          null &&
                                                      _model
                                                              .searchModel
                                                              .searchfieldController
                                                              .text !=
                                                          '')
                                                    Flexible(
                                                      child: Builder(
                                                        builder: (context) {
                                                          final usersQueryChild =
                                                              usersQueryUsersRowList
                                                                  .toList();
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: List.generate(
                                                                  usersQueryChild
                                                                      .length,
                                                                  (usersQueryChildIndex) {
                                                                final usersQueryChildItem =
                                                                    usersQueryChild[
                                                                        usersQueryChildIndex];
                                                                return Visibility(
                                                                  visible: functions.searchInChild(
                                                                          _model
                                                                              .searchModel
                                                                              .searchfieldController
                                                                              .text,
                                                                          usersQueryChildItem
                                                                              .name) ??
                                                                      true,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            16.0,
                                                                            16.0),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .userModels2
                                                                          .getModel(
                                                                        usersQueryChildIndex
                                                                            .toString(),
                                                                        usersQueryChildIndex,
                                                                      ),
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      updateOnChange:
                                                                          true,
                                                                      child:
                                                                          UserWidget(
                                                                        key:
                                                                            Key(
                                                                          'Keyi8w_${usersQueryChildIndex.toString()}',
                                                                        ),
                                                                        usersRow:
                                                                            usersQueryChildItem,
                                                                        usersCoursesRowList:
                                                                            usersCoursesQueryUsersCoursesRowList,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
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
        ),
      ),
    );
  }
}
