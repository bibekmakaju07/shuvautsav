import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/features/profile/controller/profile_controller.dart';

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
                Text("Something went wrong"),
                OutlinedButton(
                  onPressed: () {
                    ref.read(profileNotifierProvider.notifier).getProfile();
                  },
                  child: Text('Retry'),
                ),
              ],
            ),
          );
        },
        loading: (loading, data) {
          return Center(child: CircularProgressIndicator());
        },
        success: (data, extra) {
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
                            data.user.name.isEmpty ? 'N/A' : data.user.name[0],
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
                              data.user.name,
                              style: context.textTheme().titleMedium,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              data.user.email,
                              style: context.textTheme().titleSmall,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.user.phone,
                                  style: context.textTheme().titleSmall,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                    onTap: () async {
                                      await Clipboard.setData(
                                          ClipboardData(text: data.user.phone));
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
                  Row(
                    children: [
                      Text(
                        '${data.areas["${data.user.areaId}"] ?? ''} ${data.user.wardNo ?? ''}',
                        style: context.textTheme().bodyMedium,
                      ),
                      Text(
                        '${data.cities["${data.user.cityId}"] ?? ''} ',
                        style: context.textTheme().bodyMedium,
                      ),
                      Text(
                        '${data.provinces["${data.user.addressId}"] ?? ''} ',
                        style: context.textTheme().bodyMedium,
                      ),
                      Text(
                        '${data.countries["${data.user.countryId}"] ?? ''},',
                        style: context.textTheme().bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
