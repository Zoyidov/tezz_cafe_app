import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class ToggleButtonsContainerNoActive extends StatelessWidget {
  const ToggleButtonsContainerNoActive({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ZoneBloc, ZoneState>(
      builder: (context, state) {
        if (state.status.isInProgress) {
          return const CustomZonesShimmer();
        }
        if (state.failure != null && state.status.isFailure) {
          return Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(state.failure?.message ?? "Zone not found"),
          );
        }
        return Container(
          height: 40,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: ToggleButtons(
              color: Colors.black,
              selectedColor: Colors.white,
              fillColor: AppColors.black,
              borderRadius: BorderRadius.circular(10),
              selectedBorderColor: Colors.black,
              borderWidth: 1.5,
              constraints: BoxConstraints(
                  maxWidth: context.width * 0.3, minWidth: context.width * 0.3, minHeight: 36, maxHeight: 36),
              isSelected: state.selectedZonesNoActive,
              onPressed: (index) {
                context.read<ZoneBloc>().add(ChangeSelectedNoActiveZoneEvent(index));
                context.read<NoActiveTableBloc>().add(ChangeNoActiveTableEvent(index));
              },
              children: state.zones.map((e) => Text(e.name)).toList(),
            ),
          ),
        );
      },
    );
  }
}

class CustomZonesShimmer extends StatelessWidget {
  const CustomZonesShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: ToggleButtons(
            color: Colors.black,
            selectedColor: Colors.white,
            fillColor: AppColors.black,
            borderRadius: BorderRadius.circular(10),
            selectedBorderColor: Colors.black,
            borderWidth: 1.5,
            constraints: BoxConstraints(
                maxWidth: context.width * 0.3, minWidth: context.width * 0.3, minHeight: 36, maxHeight: 36),
            isSelected: List.generate(3, (index) => false),
            // onPressed: (index) => context.read<ZoneBloc>().add(ChangeSelectedZoneEvent(index)),
            children: List.generate(3, (index) => Text('Zone ${index + 1}')),
          ),
        ),
      ),
    );
  }
}
