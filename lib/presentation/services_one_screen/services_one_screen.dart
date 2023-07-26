import '../services_one_screen/widgets/sliderrectangle1_item_widget.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';import 'package:sakuni/widgets/app_bar/appbar_subtitle_3.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_bottom_bar.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';import 'package:sakuni/widgets/custom_outlined_button.dart';import 'package:sakuni/widgets/custom_search_view.dart';import 'package:sakuni/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class ServicesOneScreen extends StatelessWidget {ServicesOneScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

TextEditingController searchController = TextEditingController();

int sliderIndex = 1;

TextEditingController groupsixtyeightController = TextEditingController();

TextEditingController groupsixtynineController = TextEditingController();

TextEditingController groupseventyoneController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(57), width: double.maxFinite, child: Stack(alignment: Alignment.bottomRight, children: [CustomAppBar(height: getVerticalSize(56), title: Padding(padding: getPadding(left: 19), child: Row(children: [AppbarSubtitle3(text: "Products", margin: getMargin(bottom: 2)), AppbarSubtitle3(text: "Properties", margin: getMargin(left: 74, top: 2))])), actions: [AppbarSubtitle3(text: "Services", margin: getMargin(left: 19, top: 21, right: 19, bottom: 11))], styleType: Style.bgFill), Align(alignment: Alignment.bottomRight, child: Container(height: getVerticalSize(7), width: getHorizontalSize(84), margin: getMargin(right: 13), decoration: BoxDecoration(color: appTheme.lime500, borderRadius: BorderRadius.circular(getHorizontalSize(3)))))])), Expanded(child: SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(800), width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(left: 12, bottom: 2), decoration: AppDecoration.fill3, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(margin: getMargin(right: 10), controller: searchController, hintText: "Search for Products", hintStyle: CustomTextStyles.bodyLargePrimaryContainer, textStyle: CustomTextStyles.bodyLargePrimaryContainer, prefix: Container(margin: getMargin(left: 21, top: 15, right: 19, bottom: 12), child: CustomImageView(svgPath: ImageConstant.imgSearchPrimarycontainer)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(51)), suffix: Container(margin: getMargin(left: 30, top: 13, right: 17, bottom: 13), child: CustomImageView(svgPath: ImageConstant.imgFrame7)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(51)), filled: true, fillColor: theme.colorScheme.primary, contentPadding: getPadding(top: 14, bottom: 14), defaultBorderDecoration: SearchViewStyleHelper.outlineGray400, enabledBorderDecoration: SearchViewStyleHelper.outlineGray400, focusedBorderDecoration: SearchViewStyleHelper.outlineGray400, disabledBorderDecoration: SearchViewStyleHelper.outlineGray400), Padding(padding: getPadding(left: 1, top: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(margin: getMargin(bottom: 2), padding: getPadding(left: 9, top: 8, right: 9, bottom: 8), decoration: AppDecoration.fill2, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage37, height: getVerticalSize(45), width: getHorizontalSize(53)), Padding(padding: getPadding(top: 7), child: Text("Electricians  ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))])), Container(margin: getMargin(top: 4), padding: getPadding(left: 14, top: 4, right: 14, bottom: 4), decoration: AppDecoration.fill2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage38, height: getVerticalSize(45), width: getHorizontalSize(32)), Padding(padding: getPadding(top: 9, bottom: 4), child: Text("Plumbing", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))])), Container(margin: getMargin(top: 4), padding: getPadding(left: 9, top: 1, right: 9, bottom: 1), decoration: AppDecoration.fill2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage39, height: getVerticalSize(43), width: getHorizontalSize(46), margin: getMargin(top: 4)), Align(alignment: Alignment.center, child: SizedBox(width: getHorizontalSize(42), child: Text("House Cleaning", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodySmall)))])), Container(height: getVerticalSize(81), width: getHorizontalSize(79), margin: getMargin(top: 4), child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.centerLeft, child: Container(padding: getPadding(left: 6, top: 4, right: 6, bottom: 4), decoration: AppDecoration.fill2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Container(width: getHorizontalSize(48), margin: getMargin(top: 44), child: Text("Bathroom & kitchen", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodySmall)))), CustomImageView(imagePath: ImageConstant.imgImage40, height: getVerticalSize(36), width: getHorizontalSize(68), alignment: Alignment.topRight, margin: getMargin(top: 8))])), Container(margin: getMargin(top: 4), padding: getPadding(left: 13, top: 9, right: 13, bottom: 9), decoration: AppDecoration.fill2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage41, height: getVerticalSize(32), width: getHorizontalSize(48), margin: getMargin(top: 1)), Padding(padding: getPadding(top: 15, right: 5), child: Text("Beauty ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))]))])), Container(height: getVerticalSize(150), width: getHorizontalSize(403), margin: getMargin(top: 17), child: Stack(alignment: Alignment.bottomCenter, children: [CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(150), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {sliderIndex = index;}), itemCount: 1, itemBuilder: (context, index, realIndex) {return Sliderrectangle1ItemWidget();}), Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(8), margin: getMargin(bottom: 4), child: AnimatedSmoothIndicator(activeIndex: sliderIndex, count: 1, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 6.01, activeDotColor: theme.colorScheme.primary, dotColor: theme.colorScheme.primary, dotHeight: getVerticalSize(8), dotWidth: getHorizontalSize(8)))))])), Padding(padding: getPadding(left: 2, top: 17), child: Row(children: [Container(width: getHorizontalSize(137), padding: getPadding(all: 10), decoration: AppDecoration.txtFill5.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("Recently Viewed", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargePrimary16)), Container(width: getHorizontalSize(98), margin: getMargin(left: 7), padding: getPadding(all: 10), decoration: AppDecoration.txtOutline.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("Categories", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeGray40016)), Container(width: getHorizontalSize(87), margin: getMargin(left: 7), padding: getPadding(all: 10), decoration: AppDecoration.txtOutline.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("Top Offer", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeGray40016)), Container(width: getHorizontalSize(52), margin: getMargin(left: 7), padding: getPadding(all: 10), decoration: AppDecoration.txtOutline1.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("New", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeGray40016))])), Padding(padding: getPadding(top: 20), child: Row(children: [Container(padding: getPadding(left: 5, top: 7, right: 5, bottom: 7), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle3121, height: getVerticalSize(121), width: getHorizontalSize(188)), Padding(padding: getPadding(top: 6), child: Text("Lorem ipsum dolor sit ...", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLarge16)), Padding(padding: getPadding(top: 6), child: Text("TZS3000 . 2 hrs", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(top: 8), child: Text("Classic Cleaning Home", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyMedium)), Padding(padding: getPadding(top: 5, bottom: 9), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgEye, height: getVerticalSize(12), width: getHorizontalSize(68), margin: getMargin(bottom: 2)), Padding(padding: getPadding(left: 4, top: 1, bottom: 1), child: Text("(5.7K)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium)), CustomImageView(svgPath: ImageConstant.imgSettings, height: getSize(13), width: getSize(13), margin: getMargin(left: 23, top: 1)), Text("40% off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBluegray400)]))])), Container(margin: getMargin(left: 6), padding: getPadding(left: 5, top: 7, right: 5, bottom: 7), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle3121121x188, height: getVerticalSize(121), width: getHorizontalSize(188)), Padding(padding: getPadding(top: 6), child: Text("Lorem ipsum dolor sit ...", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLarge16)), Padding(padding: getPadding(top: 6), child: Text("TZS3000 . 2 hrs", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(top: 8), child: Text("Beauty Services", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyMedium)), Padding(padding: getPadding(top: 5, bottom: 9), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgEye, height: getVerticalSize(12), width: getHorizontalSize(68), margin: getMargin(bottom: 2)), Padding(padding: getPadding(left: 4, top: 1, bottom: 1), child: Text("(5.7K)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium)), CustomImageView(svgPath: ImageConstant.imgSettings, height: getSize(13), width: getSize(13), margin: getMargin(left: 23, top: 1)), Text("40% off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBluegray400)]))]))])), Padding(padding: getPadding(top: 17), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 1), child: Text("Top Offers", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Spacer(), Padding(padding: getPadding(top: 2, bottom: 3), child: Text("See All", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeBlue700)), CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(21), width: getSize(21), margin: getMargin(left: 2, bottom: 3))])), Padding(padding: getPadding(left: 2, top: 13), child: Row(children: [Container(padding: getPadding(left: 5, top: 7, right: 5, bottom: 7), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle31211, height: getVerticalSize(121), width: getHorizontalSize(188)), Padding(padding: getPadding(top: 4), child: Text("Lorem ipsum dolor sit ...", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLarge16)), Padding(padding: getPadding(top: 4), child: Text("TZS3000 . 2 hrs", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(top: 4), child: Text("Fan Repair", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyMedium)), Padding(padding: getPadding(top: 4, bottom: 10), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgEye, height: getVerticalSize(12), width: getHorizontalSize(68), margin: getMargin(top: 1, bottom: 1)), Padding(padding: getPadding(left: 4, top: 1), child: Text("(5.7K)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium)), CustomImageView(svgPath: ImageConstant.imgSettings, height: getSize(13), width: getSize(13), margin: getMargin(left: 23, top: 2)), Padding(padding: getPadding(bottom: 1), child: Text("40% off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBluegray400))]))])), Container(margin: getMargin(left: 1), padding: getPadding(left: 5, top: 7, right: 5, bottom: 7), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle3121, height: getVerticalSize(121), width: getHorizontalSize(188)), Padding(padding: getPadding(top: 4), child: Text("Lorem ipsum dolor sit ...", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLarge16)), Padding(padding: getPadding(top: 4), child: Text("TZS3000 . 2 hrs", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium)), Padding(padding: getPadding(top: 4), child: Text("Classic Cleaning Home", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyMedium)), Padding(padding: getPadding(top: 4, bottom: 5), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgEye, height: getVerticalSize(12), width: getHorizontalSize(68), margin: getMargin(top: 1, bottom: 1)), Padding(padding: getPadding(left: 4, top: 1), child: Text("(5.7K)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelMedium)), CustomImageView(svgPath: ImageConstant.imgSettings, height: getSize(13), width: getSize(13), margin: getMargin(left: 23, top: 2)), Padding(padding: getPadding(bottom: 1), child: Text("40% off", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBluegray400))]))]))]))]))), CustomImageView(imagePath: ImageConstant.imgRectangle3162, height: getVerticalSize(799), width: getHorizontalSize(428), alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 24, top: 35, right: 24, bottom: 35), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(top: 8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomTextFormField(controller: groupsixtyeightController, margin: getMargin(right: 8), contentPadding: getPadding(top: 21, right: 30, bottom: 21), textStyle: CustomTextStyles.titleMediumInterIndigo90001, hintText: "Home", hintStyle: CustomTextStyles.titleMediumInterIndigo90001, textInputAction: TextInputAction.next, prefix: Container(margin: getMargin(left: 24, top: 21, right: 9, bottom: 25), child: CustomImageView(svgPath: ImageConstant.imgHomeIndigo90001)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(65)), defaultBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, enabledBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, focusedBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, disabledBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001)), Expanded(child: Container(margin: getMargin(left: 8), padding: getPadding(left: 25, top: 21, right: 25, bottom: 21), decoration: AppDecoration.outline4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgCalendar, height: getVerticalSize(21), width: getHorizontalSize(16)), Padding(padding: getPadding(left: 10), child: Text("Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumInterIndigo90001))])))])), Padding(padding: getPadding(top: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: getMargin(right: 8), padding: getPadding(left: 4, top: 19, right: 4, bottom: 19), decoration: AppDecoration.outline4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(svgPath: ImageConstant.imgIconsaxlinearmessageIndigo90001, height: getVerticalSize(23), width: getHorizontalSize(22), margin: getMargin(bottom: 3)), Padding(padding: getPadding(left: 10, top: 2, bottom: 2), child: Text("Requirements", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumInterIndigo90001))]))), Expanded(child: CustomTextFormField(controller: groupsixtynineController, margin: getMargin(left: 8), contentPadding: getPadding(top: 21, right: 30, bottom: 21), textStyle: CustomTextStyles.titleMediumInterIndigo90001, hintText: "Save", hintStyle: CustomTextStyles.titleMediumInterIndigo90001, textInputAction: TextInputAction.next, prefix: Container(margin: getMargin(left: 29, top: 21, right: 10, bottom: 21), child: CustomImageView(svgPath: ImageConstant.imgFile)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(65)), defaultBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, enabledBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, focusedBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, disabledBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001))])), Padding(padding: getPadding(top: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(width: double.maxFinite, height: getVerticalSize(65), text: "Categories", margin: getMargin(right: 8), leftIcon: Container(margin: getMargin(right: 10), child: CustomImageView(svgPath: ImageConstant.imgIconamooncategorythin)), buttonStyle: CustomButtonStyles.outlineIndigo90001, buttonTextStyle: CustomTextStyles.titleMediumInterIndigo90001, onTap: () {onTapCategoriesone(context);})), Expanded(child: CustomTextFormField(controller: groupseventyoneController, margin: getMargin(left: 8), contentPadding: getPadding(top: 21, right: 30, bottom: 21), textStyle: CustomTextStyles.titleMediumInterIndigo90001, hintText: "Profile", hintStyle: CustomTextStyles.titleMediumInterIndigo90001, prefix: Container(margin: getMargin(left: 25, top: 20, right: 10, bottom: 21), child: CustomImageView(svgPath: ImageConstant.imgUserIndigo90001)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(65)), defaultBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, enabledBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, focusedBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001, disabledBorderDecoration: TextFormFieldStyleHelper.outlineIndigo90001))])), Container(height: getVerticalSize(152), width: getHorizontalSize(377), margin: getMargin(top: 22), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: getVerticalSize(65), width: getHorizontalSize(180), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)), border: Border.all(color: appTheme.indigo90001, width: getHorizontalSize(1)))), Container(height: getVerticalSize(65), width: getHorizontalSize(180), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)), border: Border.all(color: appTheme.indigo90001, width: getHorizontalSize(1))))]), Padding(padding: getPadding(left: 32, top: 39, right: 22), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomElevatedButton(width: getHorizontalSize(85), height: getVerticalSize(22), text: "About", margin: getMargin(top: 1, bottom: 6), leftIcon: Container(margin: getMargin(right: 10), child: CustomImageView(svgPath: ImageConstant.imgInfo)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumInterIndigo90001, onTap: () {onTapAbout(context);}), CustomElevatedButton(width: getHorizontalSize(136), height: getVerticalSize(31), text: "Feedbaack", leftIcon: Container(margin: getMargin(right: 10), child: CustomImageView(svgPath: ImageConstant.imgFluentpersonfeedback20regular)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumInterIndigo90001, onTap: () {onTapFeedbaack(context);})]))])), Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 32), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomElevatedButton(width: getHorizontalSize(101), height: getVerticalSize(22), text: "Address", margin: getMargin(bottom: 2), leftIcon: Container(margin: getMargin(right: 10), child: CustomImageView(svgPath: ImageConstant.imgFluentlocation16regular)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumInterIndigo90001, onTap: () {onTapAddress(context);}), Spacer(), CustomImageView(svgPath: ImageConstant.imgTelevision, height: getVerticalSize(19), width: getHorizontalSize(27), margin: getMargin(bottom: 4)), Padding(padding: getPadding(left: 9, top: 2), child: Text("Payment", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumInterIndigo90001))])), Padding(padding: getPadding(top: 41), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: getVerticalSize(65), width: getHorizontalSize(180), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)), border: Border.all(color: appTheme.indigo90001, width: getHorizontalSize(1)))), Container(height: getVerticalSize(65), width: getHorizontalSize(180), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)), border: Border.all(color: appTheme.indigo90001, width: getHorizontalSize(1))))]))]))])), Padding(padding: getPadding(top: 17), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: GestureDetector(onTap: () {onTapRowquestion(context);}, child: Container(margin: getMargin(right: 8), padding: getPadding(left: 25, top: 6, right: 25, bottom: 6), decoration: AppDecoration.outline4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgQuestion, height: getSize(29), width: getSize(29), margin: getMargin(top: 3, bottom: 19)), Container(width: getHorizontalSize(70), margin: getMargin(left: 10, top: 3), child: Text("Help & \nSupport", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumInterIndigo90001))])))), Expanded(child: CustomOutlinedButton(width: double.maxFinite, height: getVerticalSize(65), text: "Settings", margin: getMargin(left: 8), leftIcon: Container(margin: getMargin(right: 10), child: CustomImageView(svgPath: ImageConstant.imgSearchIndigo90001)), buttonStyle: CustomButtonStyles.outlineIndigo90001, buttonTextStyle: CustomTextStyles.titleMediumInterIndigo90001, onTap: () {onTapSettingsfour(context);}))]))])))])), Padding(padding: getPadding(top: 74), child: SizedBox(width: getHorizontalSize(50), child: Divider(height: getVerticalSize(6), thickness: getVerticalSize(6), color: appTheme.lime500)))])))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Solaruserbrokendefault: return AppRoutes.messagesOnePage; case BottomBarEnum.Iconsaxlinearmessage: return "/"; case BottomBarEnum.Home: return "/"; case BottomBarEnum.Save: return "/"; case BottomBarEnum.Basilmenuoutlinedefault: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagesOnePage: return MessagesOnePage(); default: return DefaultWidget();} } 
/// Navigates to the categoriesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the categoriesScreen.
onTapCategoriesone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.categoriesScreen); } 
/// Navigates to the aboutScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the aboutScreen.
onTapAbout(BuildContext context) { Navigator.pushNamed(context, AppRoutes.aboutScreen); } 
/// Navigates to the feedbackScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the feedbackScreen.
onTapFeedbaack(BuildContext context) { Navigator.pushNamed(context, AppRoutes.feedbackScreen); } 
/// Navigates to the addressScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the addressScreen.
onTapAddress(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addressScreen); } 
/// Navigates to the helpAndSupportScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the helpAndSupportScreen.
onTapRowquestion(BuildContext context) { Navigator.pushNamed(context, AppRoutes.helpAndSupportScreen); } 
/// Navigates to the settingsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the settingsScreen.
onTapSettingsfour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 
 }
