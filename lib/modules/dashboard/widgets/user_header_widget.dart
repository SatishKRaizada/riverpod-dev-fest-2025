import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dev_fest_2025/themes/app_color.dart';

class UserHeaderWidget extends StatelessWidget {
  final String userName;
  final String subtitle;
  final int cartItemCount;
  final VoidCallback? onCartTap;

  const UserHeaderWidget({
    super.key,
    required this.userName,
    required this.subtitle,
    required this.cartItemCount,
    this.onCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset('assets/images/gaurav.png', width: 50, height: 50, fit: BoxFit.cover),
      ),
      title: Text(userName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 16)),
      trailing: GestureDetector(
        onTap: onCartTap,
        child: Badge(
          backgroundColor: cartItemCount > 0 ? AppColor.cancelledColor : Colors.transparent,
          label: Visibility(
            visible: cartItemCount > 0,
            child: Text('$cartItemCount', style: const TextStyle(color: Colors.white, fontSize: 14)),
          ),
          child: const Icon(CupertinoIcons.cart_fill, size: 30),
        ),
      ),
    );
  }
}
