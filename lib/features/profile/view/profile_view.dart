import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/login/views/login_page.dart';
import 'package:shuvautsavapp/features/orders/views/order_status_tab_page.dart';
import 'package:shuvautsavapp/features/product/views/wishlist_page.dart';
import 'package:shuvautsavapp/features/profile/controller/delete_account.dart';
import 'package:shuvautsavapp/features/profile/controller/logout_controller.dart';
import 'package:shuvautsavapp/features/profile/controller/profile_controller.dart';
import 'package:shuvautsavapp/features/profile/view/update_password_page.dart';
import 'package:shuvautsavapp/features/profile/view/update_profile_view.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileNotifierProvider.notifier).getProfile();
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileData = ref.watch(profileNotifierProvider);
    ref.listen(logoutProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide();
          }
        },
        success: (data, extra) {
          ref.replaceAll(RoutePage(child: LoginPage(), name: 'LoginPage'));
        },
      );
    });
    ref.listen(deleteAccountProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide();
          }
        },
        success: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Account Deletion Successful',
              description: '',
              id: 'd1as11',
              error: false,
            );
          });
          ref.replaceAll(RoutePage(child: LoginPage(), name: 'LoginPage'));
        },
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Something went wrong',
              description: '',
              id: 'das11',
              error: true,
            );
          });
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: SizedBox(),
        ),
      ),
      body: profileData.maybeWhen(
        orElse: () {
          return SizedBox();
        },
        error: (data, extra) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data.message),
                OutlinedButton(
                  onPressed: () {
                    if (data.statusCode == 1002) {
                      ref.push(RoutePage(
                          child: const LoginPage(), name: 'LoginPage'));
                      return;
                    }
                    ref.read(profileNotifierProvider.notifier).getProfile();
                  },
                  child: Text(data.statusCode == 1002 ? 'Login' : 'Retry'),
                ),
              ],
            ),
          );
        },
        loading: (loading, data) {
          return Center(child: CircularProgressIndicator());
        },
        success: (profileDashboardData, extra) {
          final data = profileDashboardData.$1;
          final dashboardCount = profileDashboardData.$2;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 25,
                          child: Text(
                           ( data.user.name??'').isEmpty ? 'N/A' : data.user.name![0],
                            style: context.textTheme().headlineMedium,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.user.name??'',
                              style: context.textTheme().titleMedium,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              data.user.email??'',
                              style: context.textTheme().titleSmall,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.user.phone ?? '',
                                  style: context.textTheme().titleSmall,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                    onTap: () async {
                                      if (data.user.phone == null) {
                                        return;
                                      }
                                      await Clipboard.setData(ClipboardData(
                                          text: data.user.phone ?? ''));
                                    },
                                    child: Icon(HugeIcons.strokeRoundedCopy02))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      Text(
                        '${data.areas["${data.user.areaId}"] ?? ''}-${data.user.wardNo ?? ''}, ',
                        style: context.textTheme().bodyMedium,
                      ),
                      Text(
                        '${data.cities["${data.user.cityId}"] ?? ''}, ',
                        style: context.textTheme().bodyMedium,
                      ),
                      Text(
                        '${data.provinces["${data.user.provinceId}"] ?? ''}, ',
                        style: context.textTheme().bodyMedium,
                      ),
                      Text(
                        '${data.countries["${data.user.countryId}"] ?? ''}.',
                        style: context.textTheme().bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Activities',
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                ref.push(RoutePage(
                                    child: OrderStatusTabPage(),
                                    name: 'WishListProductList'));
                              },
                              child: _buildInfoCard(
                                title: 'Orders',
                                value: '${dashboardCount.data.orders ?? ''}',
                                icon: Icons.shopping_cart,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                ref.push(RoutePage(
                                    child: OrderStatusTabPage(),
                                    name: 'WishListProductList'));
                              },
                              child: _buildInfoCard(
                                title: 'Returns',
                                value: '${dashboardCount.data.returns ?? ''}',
                                icon: Icons.undo,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                ref.push(RoutePage(
                                    child: WishListProductList(),
                                    name: 'WishListProductList'));
                              },
                              child: _buildInfoCard(
                                title: 'Wishlists',
                                value: '${dashboardCount.data.wishlists ?? ''}',
                                icon: Icons.favorite_border,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Action',
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          ref.push(RoutePage(
                              child: UpdateProfile(), name: 'UpdateProfile'));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(HugeIcons.strokeRoundedProfile02,
                                    size: 28,
                                    color: Theme.of(context).primaryColor),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    'Update Profile',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    size: 18, color: Colors.grey),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          ref.push(
                            RoutePage(
                              child: UpdatePasswordForm(),
                              name: 'UpdatePasswordForm',
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.lock_outline,
                                    size: 28,
                                    color: Theme.of(context).primaryColor),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    'Update Password',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    size: 18, color: Colors.grey),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          ref
                              .read(deleteAccountProvider.notifier)
                              .deleteAccount();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  HugeIcons.strokeRoundedLogout02,
                                  size: 28,
                                  color: context.primaryColor,
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    'Delete Account',
                                    style: context.bodySmall.copyWith(
                                      color: context.primaryColor,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          ref.read(logoutProvider.notifier).clearData();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: context.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  HugeIcons.strokeRoundedLogout02,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    'Logout',
                                    style: context.bodySmall.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: color.withOpacity(0.2),
              child: Icon(
                icon,
                size: 25,
                color: color,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
