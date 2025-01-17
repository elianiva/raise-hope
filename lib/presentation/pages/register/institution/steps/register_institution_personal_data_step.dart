import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raise_hope/presentation/pages/register/institution/cubit/register_institution_cubit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterInstitutionPersonalDataStep extends StatefulWidget {
  const RegisterInstitutionPersonalDataStep({super.key});

  @override
  State<RegisterInstitutionPersonalDataStep> createState() => _RegisterVolunterPersonalDataStepState();
}

class _RegisterVolunterPersonalDataStepState extends State<RegisterInstitutionPersonalDataStep> {
  final _form = FormGroup({
    'name': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'phoneNumber': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(10),
    ]),
    'website': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
  });

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterInstitutionCubit>().state.data;

    _form.control('name').value = currentData.name;
    _form.control('email').value = currentData.email;
    _form.control('phoneNumber').value = currentData.phoneNumber;
    _form.control('website').value = currentData.website;
    _form.control('password').value = currentData.password;

    if (currentData.isUsingCurrentUser) {
      _form.control('email').markAsDisabled();
      _form.control('password').setValidators(
        [],
        autoValidate: true,
      );

      _form.markAsDirty();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: _form,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          6.verticalSpace, // to fix floating label clipping
          ReactiveTextField(
            formControlName: 'name',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: 'Name',
              hintText: 'Institution Name',
            ),
            validationMessages: {
              ValidationMessage.required: (error) => 'Please enter your name.',
              ValidationMessage.minLength: (error) => 'Name must be at least 3 characters.',
            },
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'email',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'example@gmail.com',
            ),
            validationMessages: {
              ValidationMessage.required: (error) => 'Please enter your email.',
              ValidationMessage.email: (error) => 'Please enter a valid email.',
            },
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'phoneNumber',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Institution Phone Number',
            ),
            validationMessages: {
              ValidationMessage.required: (error) => 'Please enter your phone number.',
              ValidationMessage.minLength: (error) => 'Phone number must be at least 10 characters.',
            },
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'website',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.url,
            decoration: const InputDecoration(
              labelText: 'Website',
              hintText: 'Institution Website',
            ),
            validationMessages: {
              ValidationMessage.required: (error) => 'Please enter your institution website.',
            },
          ),
          33.verticalSpace,
          BlocBuilder<RegisterInstitutionCubit, RegisterInstitutionState>(
            builder: (_, state) => Visibility(
              visible: !state.data.isUsingCurrentUser,
              child: ReactiveTextField(
                formControlName: 'password',
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                ),
                validationMessages: {
                  ValidationMessage.required: (error) => 'Please enter your password',
                  ValidationMessage.minLength: (error) => 'Password should be at least 8 characters',
                },
              ),
            ),
          ),
          43.verticalSpace,
          _buildButton(),
        ],
      ),
    );
  }

  Row _buildButton() {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: ReactiveFormConsumer(
              builder: (context, form, child) {
                return FilledButton(
                  onPressed: form.valid ? () => _save().nextStep() : null,
                  child: const Text('Next'),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  RegisterInstitutionCubit _save() {
    return context.read<RegisterInstitutionCubit>()
      ..updatePersonalData(
        name: _form.control('name').value,
        email: _form.control('email').value,
        phoneNumber: _form.control('phoneNumber').value,
        website: _form.control('website').value,
        password: _form.control('password').value,
      );
  }
}
