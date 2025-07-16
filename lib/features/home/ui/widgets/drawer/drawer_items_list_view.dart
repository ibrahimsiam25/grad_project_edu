import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  final List<DrawerItemModel> drawerItems;
  const DrawerItemsListView({super.key, required this.drawerItems});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      itemBuilder: (context, index) => DrawerItem(
        iconPath: drawerItems[index].iconPath,
        title: drawerItems[index].title,
        onTap: drawerItems[index].onTap,
        index: index,
      ),
      itemCount: drawerItems.length,
      separatorBuilder: (context, index) => vGap(12),
    );
  }
}
