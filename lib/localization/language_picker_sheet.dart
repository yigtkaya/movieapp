import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/constants/app_colors.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/di/dependecy_injection_items.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';

final class LanguagePickerBottomSheet extends StatelessWidget {
  const LanguagePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DepInItems.languageCubit,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          vertical: AppDesignConstants.spacingLarge,
        ),
        itemCount: context.read<LanguageCubit>().supportedLanguages.length,
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDesignConstants.spacingMedium,
            ),
            child: Divider(
              color: AppColors.kSecondary700,
              thickness: 1,
            ),
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              context.read<LanguageCubit>().supportedLanguages[index].imagePath,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            title: Text(
              context.read<LanguageCubit>().supportedLanguages[index].name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: context.read<LanguageCubit>().state.selectedLanguage ==
                    context.read<LanguageCubit>().supportedLanguages[index]
                ? Icon(Icons.check, color: AppColors.kPrimary100)
                : null,
            onTap: () {
              context.read<LanguageCubit>().changeLanguage(
                    context.read<LanguageCubit>().supportedLanguages[index],
                  );
              Navigator.of(context, rootNavigator: true).pop();
            },
          );
        },
      ),
    );
  }
}
