import 'dart:async';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raise_hope/common/enums/organization_size.dart';
import 'package:raise_hope/common/enums/organization_types.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/pages/register/institution/cubit/register_institution_cubit.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterInstitutionBackgroundStep extends StatefulWidget {
  const RegisterInstitutionBackgroundStep({super.key, required this.typesOfHelp});

  final List<String> typesOfHelp;

  @override
  State<RegisterInstitutionBackgroundStep> createState() => _RegisterVolunterPersonalDataStepState();
}

class _RegisterVolunterPersonalDataStepState extends State<RegisterInstitutionBackgroundStep> {
  late final _form = FormGroup({
    'organizationType': FormControl<OrganizationType>(validators: [
      Validators.required,
    ]),
    'organizationSize': FormControl<OrganizationSize>(validators: [
      Validators.required,
    ]),
    'typeOfHelp': FormGroup({
      for (final typeOfHelp in widget.typesOfHelp) typeOfHelp: FormControl<bool>(value: false),
    }, validators: [
      // required at least one type of help
      const MustSelectAtLeastOneValidator(),
    ]),
  });

  late final StreamSubscription _formValueChangesSubscription;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterInstitutionCubit>().state.data;

    _form.control('organizationType').value = currentData.organizationType;
    _form.control('organizationSize').value = currentData.organizationSize;

    for (final String typeOfHelp in currentData.typeOfHelp ?? []) {
      _form.control('typeOfHelp.$typeOfHelp').value = true;
    }

    _formValueChangesSubscription = _form.valueChanges.listen((value) => _save());
  }

  @override
  void dispose() {
    _formValueChangesSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RegisterInstitutionCubit>().previousStep();
        return false;
      },
      child: ReactiveForm(
        formGroup: _form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            6.verticalSpace, // to fix floating label clipping
            DropdownSearch<OrganizationType>(
              selectedItem: _form.control('organizationType').value,
              items: OrganizationType.values,
              itemAsString: kGetOrganizationTypeName,
              onChanged: (value) {
                _form.control('organizationType').value = value;
                _save();
              },
              popupProps: const PopupProps.menu(
                showSearchBox: true,
              ),
              dropdownDecoratorProps: const DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Organization Type",
                  hintText: "Select Organization Type",
                ),
              ),
            ),
            20.verticalSpace,
            Text(
              "Organization Size",
              style: context.textTheme.bodySmall,
            ),
            ReactiveRadioListTile(
              formControlName: 'organizationSize',
              title: RichText(
                text: TextSpan(
                  text: 'Small',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: ' (1-10) employees/volunteers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              value: OrganizationSize.small,
            ),
            ReactiveRadioListTile(
              formControlName: 'organizationSize',
              title: RichText(
                text: TextSpan(
                  text: 'Medium',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: ' (11-50) employees/volunteers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              value: OrganizationSize.medium,
            ),
            ReactiveRadioListTile(
              formControlName: 'organizationSize',
              title: RichText(
                text: TextSpan(
                  text: 'Large',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: ' (50+) employees/volunteers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              value: OrganizationSize.large,
            ),
            20.verticalSpace,
            Text(
              "Type of Help",
              style: context.textTheme.bodySmall,
            ),
            ...widget.typesOfHelp.map((e) {
              return ReactiveCheckboxListTile(
                formControlName: 'typeOfHelp.$e',
                title: Text(e.titleCase),
              );
            }).toList(),

            43.verticalSpace,
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Row _buildButton() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () => _save().previousStep(),
            child: const Text("Back"),
          ),
        ),
        16.horizontalSpace,
        Expanded(
          child: ReactiveFormConsumer(
            builder: (_, form, __) => FilledButton(
              onPressed: form.valid ? _submit : null,
              child: _isLoading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: context.colorScheme.onPrimary,
                      ),
                    )
                  : const Text("Submit"),
            ),
          ),
        ),
      ],
    );
  }

  void _submit() async {
    _save();

    setState(() => _isLoading = true);

    final error = await context.read<RegisterInstitutionCubit>().submit();

    setState(() => _isLoading = false);

    if (error != null && context.mounted) {
      context.showSnackbar(title: 'Whoops!', message: error.message);
    } else {
      locator<AppRouter>().push(
        RegisterCongratulationRoute(isInstitution: true),
      );
    }
  }

  RegisterInstitutionCubit _save() {
    final List<String> typeOfHelps = [];

    for (final typeOfHelp in widget.typesOfHelp) {
      if (_form.control('typeOfHelp.$typeOfHelp').value) {
        typeOfHelps.add(typeOfHelp);
      }
    }

    return context.read<RegisterInstitutionCubit>()
      ..updateBackground(
        organizationType: _form.control('organizationType').value,
        organizationSize: _form.control('organizationSize').value,
        typeOfHelp: typeOfHelps,
      );
  }
}

class MustSelectAtLeastOneValidator extends Validator<dynamic> {
  const MustSelectAtLeastOneValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return control.isNotNull && control.value is bool && control.value == true ? null : {'requiredTrue': true};
  }
}
