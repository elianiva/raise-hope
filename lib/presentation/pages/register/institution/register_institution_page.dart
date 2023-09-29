import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/repositories/mission_repository.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/pages/register/components/custom_stepper.dart';
import 'package:raise_hope/presentation/pages/register/institution/cubit/register_institution_cubit.dart';
import 'package:raise_hope/presentation/pages/register/institution/steps/register_institution_address_information_step.dart';
import 'package:raise_hope/presentation/pages/register/institution/steps/register_institution_background_step.dart';
import 'package:raise_hope/presentation/pages/register/institution/steps/register_institution_personal_data_step.dart';
import 'package:raise_hope/presentation/theme/color_schemes.dart';

@RoutePage()
class RegisterInstitutionPage extends StatefulWidget {
  final bool isUsingCurrentUser;

  const RegisterInstitutionPage({
    super.key,
    this.isUsingCurrentUser = false,
  });

  @override
  State<RegisterInstitutionPage> createState() => _RegisterInstitutionPageState();
}

class _RegisterInstitutionPageState extends State<RegisterInstitutionPage> {
  final ScrollController _scrollController = ScrollController();
  final PageController _pageController = PageController();
  final MissionRepository _missionRepository = locator<MissionRepository>();
  List<Widget> _steps = [];

  RegisterInstitutionState? _previousState;

  int _mapStateToIndex(RegisterInstitutionState state) => state.when(
        personalData: (_) => 0,
        addressInformation: (_) => 1,
        background: (_) => 2,
      );

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() async {
    super.initState();

    final typesOfHelp = await _missionRepository.getTypesOfHelp();
    _steps = [
      const RegisterInstitutionPersonalDataStep(),
      const RegisterInstitutiondAddressInformationStep(),
      RegisterInstitutionBackgroundStep(typesOfHelp: typesOfHelp.getOrElse(() => [])),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        colorScheme: context.colorScheme.copyWith(
          primary: ColorSchemes.rawSecondaryColor,
          secondary: context.colorScheme.primary,
        ),
      ),
      child: Scaffold(
        body: BlocProvider(
          create: (context) {
            final cubit = locator<RegisterInstitutionCubit>();

            if (widget.isUsingCurrentUser) {
              cubit.initializeWithCurrentUser();
            }

            return cubit;
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 100,
                backgroundColor: context.colorScheme.background,
                surfaceTintColor: context.colorScheme.background,
                shadowColor: context.colorScheme.onBackground.withOpacity(0.2),
                elevation: 1,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1,
                  title: Text(
                    "Register as Institution",
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  centerTitle: true,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text(
                      //   "Register as Volunteer",
                      //   style: context.textTheme.titleLarge?.copyWith(
                      //     fontWeight: FontWeight.w700,
                      //   ),
                      // ),
                      // 14.verticalSpace,
                      const Text(
                        "Register now to join our community of volunteers and make a difference in people's lives!",
                        textAlign: TextAlign.center,
                      ),
                      32.verticalSpace,
                      BlocBuilder<RegisterInstitutionCubit, RegisterInstitutionState>(builder: (context, state) {
                        return CustomStepper(
                          steps: const [
                            CustomStepperStep(
                              icon: Icons.person,
                              title: "Personal Data",
                            ),
                            CustomStepperStep(
                              icon: CommunityMaterialIcons.office_building,
                              title: "Address Information",
                            ),
                            CustomStepperStep(
                              icon: CommunityMaterialIcons.sitemap,
                              title: "Background",
                            ),
                          ],
                          currentStep: _mapStateToIndex(state),
                        );
                      }),
                      52.verticalSpace,
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: BlocListener<RegisterInstitutionCubit, RegisterInstitutionState>(
                  listener: _onRegisterStateChanges,
                  child: ExpandablePageView.builder(
                    controller: _pageController,
                    itemCount: _steps.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: _steps[index],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: 43.verticalSpace,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onRegisterStateChanges(context, RegisterInstitutionState state) {
    if (_previousState != null && _mapStateToIndex(_previousState!) == _mapStateToIndex(state)) {
      return;
    }

    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _pageController.animateToPage(
      _mapStateToIndex(state),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    _previousState = state;
  }
}
