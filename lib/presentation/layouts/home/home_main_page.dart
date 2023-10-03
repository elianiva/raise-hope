import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/repositories/mission_repository.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/components/card/karma_progress_card.dart';
import 'package:raise_hope/presentation/pages/home/components/mission_section.dart';
import 'package:raise_hope/presentation/pages/home/components/filter_list.dart';
import 'package:raise_hope/presentation/pages/home/components/mission_stats.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

@RoutePage()
class HomeMainPage extends StatefulWidget {
  HomeMainPage({super.key});

  final MissionRepository _missionRepository = locator<MissionRepository>();

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _buildKarmaProgress(),
          const SliverToBoxAdapter(child: IntrinsicHeight(child: MissionStats())),
          SliverToBoxAdapter(
            child: MissionSection(
              title: 'For You',
              filterItems: widget._missionRepository.typesOfHelp,
              missions: widget._missionRepository.missions,
            ),
          ),
          SliverToBoxAdapter(
            child: MissionSection(
              title: 'Popular Mission',
              filterItems: widget._missionRepository.typesOfHelp,
              missions: widget._missionRepository.missions,
            ),
          ),
          SliverToBoxAdapter(child: 32.verticalSpace)
        ],
      ),
    );
  }

  Widget _buildFilter() {
    return SliverToBoxAdapter(
      child: StreamBuilder(
        stream: widget._missionRepository.getTypesOfHelp().asStream(),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == null || snapshot.data!.isLeft()) {
            return const SizedBox(height: 32);
          }

          final typesOfHelp = snapshot.data!.getOrElse(() => []);
          return FilterList(
            items: typesOfHelp,
            onChanged: (value) {
              print(value);
            },
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle({
    required String title,
    VoidCallback? onPressed,
  }) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Text(
              title,
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onBackground.withOpacity(0.8),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: onPressed,
              child: Text(
                'See All',
                style: context.textTheme.bodyMedium!.copyWith(
                  color: context.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKarmaProgress() {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverToBoxAdapter(
        child: GestureDetector(
          child: const KarmaProgressCard(
            karmaToNextLevel: 245,
            currentKarmaLevel: 3,
          ),
          onTap: () => locator<AppRouter>().push(const KarmaMainRoute()),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      centerTitle: true,
      title: Text(
        'Raise Hope',
        style: context.textTheme.titleLarge!.copyWith(
          color: context.colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
      expandedHeight: 180,
      backgroundColor: context.colorScheme.primary,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(Icons.menu, color: context.colorScheme.onPrimary),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_rounded, color: context.colorScheme.onPrimary),
        )
      ],
      pinned: true,
      flexibleSpace: const FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.only(left: 16, right: 16, bottom: 48),
        background: Stack(
          children: [
            Positioned.fill(
              child: Image(
                image: AssetImage('assets/images/home_app_bar_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 48,
              child: SizedBox(
                height: 44,
                child: TextField(
                  style: TextStyle(color: Colors.black45, fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Search new mission...',
                    prefixIcon: Icon(Icons.search, color: Colors.black54),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
