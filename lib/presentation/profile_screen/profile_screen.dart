import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';import 'package:sakuni/widgets/app_bar/appbar_button_2.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_bottom_bar.dart';import 'package:sakuni/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {ProfileScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(67), width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 15, top: 14, bottom: 2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage53, height: getVerticalSize(50), width: getHorizontalSize(44)), Spacer(), CustomImageView(svgPath: ImageConstant.imgNotification, height: getVerticalSize(31), width: getHorizontalSize(33), margin: getMargin(top: 11, bottom: 8)), CustomImageView(svgPath: ImageConstant.imgSearchPrimary31x30, height: getVerticalSize(31), width: getHorizontalSize(30), margin: getMargin(left: 22, top: 9, bottom: 9))]))), CustomAppBar(height: getVerticalSize(67), title: AppbarButton2(margin: getMargin(left: 15), onTap: () {onTapProfile(context);}), actions: [AppbarImage(height: getSize(25), width: getSize(25), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 15, top: 20, right: 15, bottom: 21))], styleType: Style.bgFill_2)])), Expanded(child: Container(padding: getPadding(left: 12, right: 12), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(margin: getMargin(left: 1, top: 26), padding: getPadding(left: 8, top: 17, right: 8, bottom: 17), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(children: [SizedBox(height: getSize(100), width: getSize(100), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse71, height: getSize(100), width: getSize(100), radius: BorderRadius.circular(getHorizontalSize(50)), alignment: Alignment.center), CustomIconButton(height: 25, width: 25, margin: getMargin(top: 8), padding: getPadding(all: 4), decoration: IconButtonStyleHelper.fillIndigo400, alignment: Alignment.topRight, child: CustomImageView(svgPath: ImageConstant.imgCamera))])), Padding(padding: getPadding(left: 26, top: 11, bottom: 13), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Hello Prathik!", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.headlineLarge), Text("+27 9034566774", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeKanitGray700)]))])), Padding(padding: getPadding(left: 16, top: 39), child: Text("Primary Information", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumBlack90001)), Padding(padding: getPadding(left: 16, top: 6), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgGridiconsphone, height: getSize(22), width: getSize(22)), Padding(padding: getPadding(left: 8), child: Text("+27 9034566774", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeGray900))])), Padding(padding: getPadding(left: 16, top: 17), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgMail, height: getSize(22), width: getSize(22), margin: getMargin(bottom: 1)), Padding(padding: getPadding(left: 8), child: Text("email@gmail.com", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeGray900))])), Padding(padding: getPadding(left: 13, top: 19), child: Text("Activity", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumBlack90001)), Padding(padding: getPadding(left: 16, top: 6), child: Text("3 Call", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Padding(padding: getPadding(left: 16, top: 19), child: Text("4 Messages Sent", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Padding(padding: getPadding(left: 16, top: 14), child: Text("Manage Account", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumBlack90001)), Padding(padding: getPadding(left: 16, top: 11), child: Text("Add Accounts", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Padding(padding: getPadding(left: 16, top: 19), child: Text("Log Out", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Spacer(), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 25, right: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(svgPath: ImageConstant.imgSolaruserbrokendefaultPrimary, height: getVerticalSize(36), width: getHorizontalSize(34)), CustomImageView(svgPath: ImageConstant.imgCall, height: getSize(27), width: getSize(27), margin: getMargin(top: 4, bottom: 4)), CustomImageView(svgPath: ImageConstant.imgHome, height: getSize(34), width: getSize(34), margin: getMargin(top: 1, bottom: 1), onTap: () {onTapImgHome(context);}), CustomImageView(svgPath: ImageConstant.imgFileBlack90001, height: getVerticalSize(24), width: getHorizontalSize(19), margin: getMargin(top: 6, bottom: 6)), CustomImageView(svgPath: ImageConstant.imgIconsaxlinearmessageBlack90001, height: getSize(31), width: getSize(31), margin: getMargin(top: 2, bottom: 2))])))])))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Solaruserbrokendefault: return AppRoutes.messagesOnePage; case BottomBarEnum.Iconsaxlinearmessage: return "/"; case BottomBarEnum.Home: return "/"; case BottomBarEnum.Save: return "/"; case BottomBarEnum.Basilmenuoutlinedefault: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagesOnePage: return MessagesOnePage(); default: return DefaultWidget();} } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapImgHome(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 
 }