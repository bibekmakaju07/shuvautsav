import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/features/cart/controller/address_controller.dart';
import 'package:shuvautsavapp/features/cart/model/adddress_select.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/features/cart/views/checkout_form.dart';
import 'package:shuvautsavapp/features/cart/views/widget/bottom_sheet_widget.dart';

final districtProvinceProvider = StateProvider.autoDispose<CPDM>((ref) {
  return CPDM();
});

class ShippingDetails extends ConsumerStatefulWidget {
  const ShippingDetails({
    super.key,
    required this.locationModel,
    required this.onValidate,
  });
  final LocationModel locationModel;
  final ValueSetter<Map<String, dynamic>> onValidate;

  @override
  ConsumerState<ShippingDetails> createState() => _ShippingDetailsState();
}

class _ShippingDetailsState extends ConsumerState<ShippingDetails> {
  late LocationModel locationModel;

  String? provideId, cityid, muncipalityId;

  @override
  void initState() {
    super.initState();
    locationModel = widget.locationModel;
    final customer = locationModel.data.customer;
    
  }

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

  final TextEditingController _countryController =
      TextEditingController(text: 'Nepal');
  final TextEditingController _provinceController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();

  final TextEditingController _muncipalityController = TextEditingController();

  final TextEditingController _streetController = TextEditingController();

  @override
  void dispose() {
    _countryController.dispose();
    _provinceController.dispose();
    _districtController.dispose();
    _muncipalityController.dispose();
    _streetController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // ref.watch(addressProvider('cities'));
    // ref.watch(addressProvider('munci'));

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
                  Text(
                    'Enter your destination to get a shipping estimate.',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                    label: 'Choose a Country',
                    readOnly: true,
                    textEditingController: _countryController,
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  SizedBox(
                    height: 16,
                  ),
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
                        items: widget.locationModel.data.provinces.entries
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
                          provideId = value.key;
                          _provinceController.text = value.value ?? '';
                          ref
                              .read(addressProvider('cities').notifier)
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
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined),
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
                        items: locationModel.data.cities.entries.map((e) {
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
                          _districtController.text = value.value ?? '';
                          ref
                              .read(addressProvider('munci').notifier)
                              .getAddress(
                            params: {
                              'id': value.key,
                            },
                            url: 'https://shuvautsav.com/api/v1/city/get-areas',
                          );
                        }
                      });
                    },
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined),
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
                    textEditingController: _muncipalityController,
                    readOnly: true,
                    onTap: () async {
                      await showCustomBottom(
                        title: 'Choose a Municipality/VDC',
                        items: locationModel.data.areas.entries.map((e) {
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
                          _muncipalityController.text = e.value ?? '';
                        }
                      });
                    },
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                  ),
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
                          var formData = {
                            "shipping_address": _streetController.text,
                            "province_id": int.tryParse(provideId ?? '') ?? 0,
                            "city_id": int.tryParse(cityid ?? '') ?? 0,
                            "area_id": int.tryParse(muncipalityId ?? '') ?? 0,
                          };
                          widget.onValidate.call(formData);
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
  }
}
