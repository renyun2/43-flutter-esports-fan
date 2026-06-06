import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/providers/providers.dart';
import 'package:esports_fan/screens/badges_screen.dart';
import 'package:esports_fan/screens/feeds_screen.dart';
import 'package:esports_fan/screens/following_screen.dart';
import 'package:esports_fan/screens/home_screen.dart';
import 'package:esports_fan/screens/leaderboard_screen.dart';
import 'package:esports_fan/screens/login_screen.dart';
import 'package:esports_fan/screens/match_detail_screen.dart';
import 'package:esports_fan/screens/matches_screen.dart';
import 'package:esports_fan/screens/merch_detail_screen.dart';
import 'package:esports_fan/screens/merch_screen.dart';
import 'package:esports_fan/screens/messages_screen.dart';
import 'package:esports_fan/screens/orders_screen.dart';
import 'package:esports_fan/screens/player_detail_screen.dart';
import 'package:esports_fan/screens/points_screen.dart';
import 'package:esports_fan/screens/predict_screen.dart';
import 'package:esports_fan/screens/profile_screen.dart';
import 'package:esports_fan/screens/recap_screen.dart';
import 'package:esports_fan/screens/settings_screen.dart';
import 'package:esports_fan/screens/splash_screen.dart';
import 'package:esports_fan/screens/team_detail_screen.dart';
import 'package:esports_fan/screens/teams_screen.dart';
import 'package:esports_fan/screens/tickets_screen.dart';
import 'package:esports_fan/widgets/shell_scaffold.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final token = ref.watch(authTokenProvider);

  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final loc = state.matchedLocation;
      final isAuth = token != null;
      final public = loc == '/splash' || loc == '/login';
      if (!isAuth && !public) return '/login';
      if (isAuth && loc == '/login') return '/home';
      return null;
    },
    routes: [
      GoRoute(path: '/splash', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      ShellRoute(
        builder: (_, __, child) => ShellScaffold(child: child),
        routes: [
          GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
          GoRoute(path: '/matches', builder: (_, __) => const MatchesScreen()),
          GoRoute(path: '/teams', builder: (_, __) => const TeamsScreen()),
          GoRoute(path: '/profile', builder: (_, __) => const ProfileScreen()),
        ],
      ),
      GoRoute(
        path: '/match/:id',
        builder: (_, s) => MatchDetailScreen(matchId: s.pathParameters['id']!),
      ),
      GoRoute(
        path: '/match/:id/recap',
        builder: (_, s) => RecapScreen(matchId: s.pathParameters['id']!),
      ),
      GoRoute(
        path: '/match/:id/predict',
        builder: (_, s) => PredictScreen(matchId: s.pathParameters['id']!),
      ),
      GoRoute(path: '/leaderboard', builder: (_, __) => const LeaderboardScreen()),
      GoRoute(
        path: '/team/:id',
        builder: (_, s) => TeamDetailScreen(teamId: s.pathParameters['id']!),
      ),
      GoRoute(
        path: '/player/:id',
        builder: (_, s) => PlayerDetailScreen(playerId: s.pathParameters['id']!),
      ),
      GoRoute(path: '/feeds', builder: (_, __) => const FeedsScreen()),
      GoRoute(path: '/merch', builder: (_, __) => const MerchScreen()),
      GoRoute(
        path: '/merch/:id',
        builder: (_, s) => MerchDetailScreen(merchId: s.pathParameters['id']!),
      ),
      GoRoute(path: '/orders', builder: (_, __) => const OrdersScreen()),
      GoRoute(path: '/badges', builder: (_, __) => const BadgesScreen()),
      GoRoute(path: '/points', builder: (_, __) => const PointsScreen()),
      GoRoute(path: '/tickets', builder: (_, __) => const TicketsScreen()),
      GoRoute(path: '/following', builder: (_, __) => const FollowingScreen()),
      GoRoute(path: '/messages', builder: (_, __) => const MessagesScreen()),
      GoRoute(path: '/settings', builder: (_, __) => const SettingsScreen()),
    ],
  );
});
