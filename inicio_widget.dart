import '../dhlutils/animaciones.dart';
import '../dhlutils/botones.dart';
import '../dhlutils/temas.dart';
import '../dhlutils/herramientas.dart';
import 'login_widget.dart';
import 'mispaquetes_widget.dart';
import 'recoleccion_widget.dart';
import 'tiendas_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget>
    with TickerProviderStateMixin {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textFieldOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        scale: 0.95,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        scale: 0.95,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(30, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFFFF0000),
        elevation: 8,
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.login,
            color: Color(0xFFECE300),
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginWidget(),
              ),
            );
          },
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                height: 500,
                child: Stack(
                  alignment: AlignmentDirectional(0, -1),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.05, -1),
                      child: Image.asset(
                        'assets/images/g0-core-pr-06292020-1.jpg',
                        width: double.infinity,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Color(0x8D090F13),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 60, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: textController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Buscar mi paquete',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText: 'No. De Paquete',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ).animated([
                                      animationsMap[
                                          'textFieldOnPageLoadAnimation']
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 24, 16, 44),
                              child: Text(
                                'Paquetes en 24hrs. La mejor paqueteria internacionalmente',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ).animated(
                                  [animationsMap['textOnPageLoadAnimation1']]),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 700,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 16),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          height: 8,
                                          thickness: 4,
                                          indent: 140,
                                          endIndent: 140,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: Text(
                                            'Bienvenido, Invitado',
                                            style: FlutterFlowTheme.of(context)
                                                .title2,
                                          ).animated([
                                            animationsMap[
                                                'textOnPageLoadAnimation2']
                                          ]),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child: Text(
                                            'Tienes dudas? Utiliza algunos de nuestos atajos',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
                                          ).animated([
                                            animationsMap[
                                                'textOnPageLoadAnimation3']
                                          ]),
                                        ),
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      MispaquetesWidget(),
                                                ),
                                              );
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Mis Paquetes',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF303030),
                                                size: 20,
                                              ),
                                              tileColor: Color(0xFFE4002B),
                                              dense: false,
                                            ),
                                          ),
                                        ),
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RecoleccionWidget(),
                                                ),
                                              );
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Programar recolección',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF303030),
                                                size: 20,
                                              ),
                                              tileColor: Color(0xFFFFCC00),
                                              dense: false,
                                            ),
                                          ),
                                        ),
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      TiendasWidget(),
                                                ),
                                              );
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Tiendas disponibles',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF303030),
                                                size: 20,
                                              ),
                                              tileColor: Color(0xFFE4002B),
                                              dense: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
