import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/constants/app_colors.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/di/dependecy_injection_items.dart';

final class LanguagePickerBottomSheet extends StatelessWidget {
  const LanguagePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DepInItems.languageCubit,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          vertical: AppDesignConstants.spacingLarge,
        ),
        itemCount: DepInItems.languageCubit.supportedLanguages.length,
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
          final language = DepInItems.languageCubit.supportedLanguages[index];
          return ListTile(
            leading: Text(
              language.imagePath,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            title: Text(
              language.name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: DepInItems.languageCubit.state.selectedLanguage == language
                ? Icon(Icons.check, color: AppColors.kPrimary100)
                : null,
            onTap: () {
              DepInItems.languageCubit.changeLanguage(language);
              Navigator.of(context, rootNavigator: true).pop();
            },
          );
        },
      ),
    );
  }
}
