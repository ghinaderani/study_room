
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_table/pages/add_table.dart';
import 'package:study_table/pages/show_table.dart';
import 'package:study_table/pages/signup.dart';
import 'package:study_table/pages/splash.dart';
import 'package:study_table/pages/start.dart';
import 'package:study_table/pages/try.dart';
import 'package:study_table/pages/update_show_table.dart';
import 'package:study_table/pages/update_table.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Splash();

        },
        routes: <RouteBase>[
          GoRoute(
              path: 'addtable',
              builder: (context, state) => AddTable(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'showtable',
                  builder: (context, state) => ShowTable(),
                ),
                GoRoute(
                  path: 'showupdatetable',
                  builder: (context, state) => ShowUpdateTable(),
                ),
                 GoRoute(
                  path: 'splash',
                  builder: (context, state) => Splash(),
                ),
              ]),
        ]),
  ],
);
