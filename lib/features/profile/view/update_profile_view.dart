import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/cart/controller/address_controller.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/features/cart/views/checkout_form.dart';
import 'package:shuvautsavapp/features/cart/views/widget/bottom_sheet_widget.dart';
import 'package:shuvautsavapp/features/profile/controller/profile_update_controller.dart';
import 'package:shuvautsavapp/features/profile/model/user_address_data_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final profileDetailsProvider =
    FutureProvider.autoDispose<UserAddressDataModel>((ref) async {
  String url = 'https://shuvautsav.com/api/v1/customer/profile';

  final response = await NetworkService().get(RequestApi(
    endPath: url,
  ));

  final data = UserAddressDataModel.fromJson(response.data['data']);
  return data;
});

class UpdateProfile extends ConsumerStatefulWidget {
  const UpdateProfile({
    super.key,
  });

  @override
  ConsumerState<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends ConsumerState<UpdateProfile> {
  Future<T?> showCustomBottom<T>(
      {required List<DropdownMenuItem<T>> items, required String title}) async {
    return showModalBottomSheet<T>(
        context: context,
        builder: (context) {
          return GenericBottomSheet(
            items: items,
            title: title,
          );
        });
  }

  final TextEditingController _provinceController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();

  final TextEditingController _muncipalityController = TextEditingController();
  final TextEditingController _wardController = TextEditingController();

  final TextEditingController _countryController = TextEditingController();
  late final TextEditingController _streetController;
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;

  final TextEditingController _istateController = TextEditingController();
  final TextEditingController _icityCodeController = TextEditingController();

  final TextEditingController _ipostCodeController = TextEditingController();
  final TextEditingController _istreetController = TextEditingController();

  LocationModel locationModel = LocationModel();

  String? provideId, cityid, muncipalityId, countryId;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _streetController = TextEditingController();
    _phoneController = TextEditingController();

    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  Map<String, String?> params = {};

  @override
  Widget build(BuildContext context) {
    final profileData = ref.watch(profileDetailsProvider);

    ref.listen(addressProvider('cities'), (prev, next) {
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
          locationModel = LocationModel(
              data: locationModel.data.copyWith(
            cities: data.data,
            areas: {},
          ));
          _districtController.text = '';
          _muncipalityController.text = '';
          setState(() {});
        },
      );
    });
    ref.listen(addressProvider('munci'), (prev, next) {
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
          _muncipalityController.text = '';
          locationModel = LocationModel(
              data: locationModel.data.copyWith(
            areas: data.data,
          ));
          setState(() {});
        },
      );
    });

    ref.listen(profileDetailsProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        data: (data) {
          _nameController.text = data.user.name??'';
          _emailController.text = data.user.email??'';
          _streetController.text = data.user.street;
          _phoneController.text = data.user.phone??'';
          _provinceController.text =
              data.provinces['${data.user.provinceId}'] ?? '';
          _districtController.text = data.cities['${data.user.cityId}'] ?? '';
          _muncipalityController.text = data.areas['${data.user.areaId}'] ?? '';

          _countryController.text =
              data.countries['${data.user.countryId}'] ?? '';

          countryId = '${data.user.countryId}';

          provideId = data.user.provinceId?.toString();
          cityid = data.user.cityId?.toString();
          muncipalityId = data.user.areaId?.toString();

          locationModel = LocationModel(
              data: locationModel.data.copyWith(
            areas: data.areas,
            cities: data.cities,
            wards: data.wards,
          ));

          setState(() {});
        },
      );
    });

    ref.listen(updateProfileController, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide;
          }
        },
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Something went wrong',
              description: '',
              id: '1212',
              error: true,
            );
          });
        },
        success: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Profile Updated Successfully',
              description: '',
              id: '1212',
              error: false,
            );
          });
          ref.pop();
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Profile'),
      ),
      body: profileData.maybeWhen(
        orElse: () {
          return SizedBox();
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8, // Softens the shadow
                      spreadRadius: 2, // Extends the shadow
                      offset: Offset(3, 3), // Moves the shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          label: 'Full Name',
                          textEditingController: _nameController,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          label: 'Phone Number',
                          validator: (p0) {
                            if (p0 == null) {
                              return 'Required';
                            }
                            if (p0.isEmpty) {
                              return 'Field cannot be empty';
                            }
                            return null;
                          },
                          textEditingController: _phoneController,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          label: 'Email address',
                          textEditingController: _emailController,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          label: 'Choose a Country',
                          textEditingController: _countryController,
                          readOnly: true,
                          validator: (p0) {
                            if (p0 == null) {
                              return 'Required';
                            }
                            if (p0.isEmpty) {
                              return 'Field cannot be empty';
                            }
                            return null;
                          },
                          onTap: () async {
                            await showCustomBottom(
                              title: 'Choose a Country',
                              items: data.countries.entries.map((e) {
                                return DropdownMenuItem(
                                  value: e,
                                  child: ListTile(
                                    title: Text(e.value),
                                    dense: true,
                                  ),
                                );
                              }).toList(),
                            ).then((value) {
                              if (value != null) {
                                _countryController.text = value.value;
                                countryId = value.key;
                              }
                            });
                          },
                          suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _countryController,
                            builder: (context, __, _) {
                              if (_countryController.text.toLowerCase() !=
                                  'nepal') {
                                return Column(
                                  children: [
                                    CustomTextFormField(
                                      label: 'State',
                                      textEditingController: _istateController,
                                      onSaved: (newValue) {
                                        params['i_state'] = newValue;
                                      },
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    CustomTextFormField(
                                      label: 'City',
                                      textEditingController:
                                          _icityCodeController,
                                      onSaved: (newValue) {
                                        params['i_suburb'] = newValue;
                                      },
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    CustomTextFormField(
                                      label: 'PostCode',
                                      textEditingController:
                                          _ipostCodeController,
                                      onSaved: (newValue) {
                                        params['i_postcode'] = newValue;
                                      },
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    CustomTextFormField(
                                      label: 'Street',
                                      textEditingController: _istreetController,
                                      onSaved: (newValue) {
                                        params['i_street'] = newValue;
                                      },
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                );
                              }
                              return Column(
                                children: [
                                  CustomTextFormField(
                                    label: 'Choose a Province',
                                    textEditingController: _provinceController,
                                    readOnly: true,
                                    validator: (p0) {
                                      if (p0 == null) {
                                        return 'Required';
                                      }
                                      if (p0.isEmpty) {
                                        return 'Field cannot be empty';
                                      }
                                      return null;
                                    },
                                    onTap: () async {
                                      await showCustomBottom(
                                        title: 'Choose a Province',
                                        items: data.provinces.entries.map((e) {
                                          return DropdownMenuItem(
                                            value: e,
                                            child: ListTile(
                                              title: Text(e.value),
                                              dense: true,
                                            ),
                                          );
                                        }).toList(),
                                      ).then((value) {
                                        if (value != null) {
                                          provideId = value.key;
                                          _provinceController.text =
                                              value.value ?? '';
                                          ref
                                              .read(addressProvider('cities')
                                                  .notifier)
                                              .getAddress(
                                            params: {
                                              'id': value.key,
                                            },
                                            url:
                                                'https://shuvautsav.com/api/v1/province/get-cities',
                                          );
                                        }
                                      });
                                    },
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down_outlined),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CustomTextFormField(
                                    label: 'Choose a District',
                                    readOnly: true,
                                    validator: (p0) {
                                      if (p0 == null) {
                                        return 'Required';
                                      }
                                      if (p0.isEmpty) {
                                        return 'Field cannot be empty';
                                      }
                                      return null;
                                    },
                                    textEditingController: _districtController,
                                    onTap: () async {
                                      await showCustomBottom(
                                        title: 'Choose a District',
                                        items: locationModel.data.cities.entries
                                            .map((e) {
                                          return DropdownMenuItem(
                                            value: e,
                                            child: ListTile(
                                              title: Text(e.value ?? ''),
                                              dense: true,
                                            ),
                                          );
                                        }).toList(),
                                      ).then((value) {
                                        if (value != null) {
                                          cityid = value.key;
                                          _districtController.text =
                                              value.value ?? '';
                                          ref
                                              .read(addressProvider('munci')
                                                  .notifier)
                                              .getAddress(
                                            params: {
                                              'id': value.key,
                                            },
                                            url:
                                                'https://shuvautsav.com/api/v1/city/get-areas',
                                          );
                                        }
                                      });
                                    },
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down_outlined),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CustomTextFormField(
                                    label: 'Choose  a Municipality/VDC',
                                    validator: (p0) {
                                      if (p0 == null) {
                                        return 'Required';
                                      }
                                      if (p0.isEmpty) {
                                        return 'Field cannot be empty';
                                      }
                                      return null;
                                    },
                                    textEditingController:
                                        _muncipalityController,
                                    readOnly: true,
                                    onTap: () async {
                                      await showCustomBottom(
                                        title: 'Choose a Municipality/VDC',
                                        items: locationModel.data.areas.entries
                                            .map((e) {
                                          return DropdownMenuItem(
                                            value: e,
                                            child: ListTile(
                                              title: Text(e.value ?? ''),
                                              dense: true,
                                            ),
                                          );
                                        }).toList(),
                                      ).then((e) {
                                        if (e != null) {
                                          muncipalityId = e.key;
                                          _muncipalityController.text =
                                              e.value ?? '';
                                        }
                                      });
                                    },
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down_outlined),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CustomTextFormField(
                                    label: 'Choose a Ward No.',
                                    validator: (p0) {
                                      if (p0 == null) {
                                        return 'Required';
                                      }
                                      if (p0.isEmpty) {
                                        return 'Field cannot be empty';
                                      }
                                      return null;
                                    },
                                    textEditingController: _wardController,
                                    readOnly: true,
                                    onTap: () async {
                                      await showCustomBottom(
                                        title: 'Choose a Ward No.',
                                        items:
                                            locationModel.data.wards.map((e) {
                                          return DropdownMenuItem(
                                            value: e,
                                            child: ListTile(
                                              title: Text('$e'),
                                              dense: true,
                                            ),
                                          );
                                        }).toList(),
                                      ).then((e) {
                                        if (e != null) {
                                          _wardController.text = '$e';
                                        }
                                      });
                                    },
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down_outlined),
                                  ),
                                ],
                              );
                            }),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          label: 'Street Address',
                          validator: (p0) {
                            if (p0 == null) {
                              return 'Required';
                            }
                            if (p0.isEmpty) {
                              return 'Field cannot be empty';
                            }
                            return null;
                          },
                          textEditingController: _streetController,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                FocusManager.instance.primaryFocus?.unfocus();

                                Map<String, dynamic> formData = {
                                  "province_id":
                                      int.tryParse(provideId ?? '') ?? 0,
                                  "city_id": int.tryParse(cityid ?? '') ?? 0,
                                  "area_id":
                                      int.tryParse(muncipalityId ?? '') ?? 0,
                                  "country_id":
                                      int.tryParse(countryId ?? '') ?? 0,
                                  "ward_no": _wardController.text,
                                  "street": _streetController.text,
                                  "name": _nameController.text,
                                  "phone": _phoneController.text,
                                  "email": _emailController.text,
                                  ...params
                                };

                                ref
                                    .read(updateProfileController.notifier)
                                    .updateProfile(params: formData);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(50),
                              backgroundColor: Theme.of(context).primaryColor,
                            ),
                            child: Text(
                              'Continue',
                              style: context.textTheme().bodyLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
