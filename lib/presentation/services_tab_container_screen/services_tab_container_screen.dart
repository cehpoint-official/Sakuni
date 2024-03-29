import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';
import 'package:sakuni/presentation/services_page/services_page.dart';
import 'package:sakuni/widgets/custom_bottom_bar.dart';

class ServicesTabContainerScreen extends StatefulWidget {
  const ServicesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesTabContainerScreenState createState() =>
      ServicesTabContainerScreenState();
}

class ServicesTabContainerScreenState extends State<ServicesTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  late TabController frame17Controller;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    frame17Controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fill3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getVerticalSize(
                        56,
                      ),
                      width: double.maxFinite,
                      child: TabBar(
                        controller: tabviewController,
                        tabs: [
                          Tab(
                            child: Text(
                              "Products",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Properties",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Services",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        42,
                      ),
                      width: getHorizontalSize(
                        396,
                      ),
                      margin: getMargin(
                        top: 352,
                      ),
                      child: TabBar(
                        controller: frame17Controller,
                        labelColor: theme.colorScheme.primary,
                        unselectedLabelColor: appTheme.gray400,
                        tabs: [
                          Tab(
                            child: Text(
                              "Recently Viewed",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Categories",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Top Offer",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "New",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getVerticalSize(
                  346,
                ),
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    ServicesPage(),
                    ServicesPage(),
                    ServicesPage(),
                    ServicesPage(),
                    ServicesPage(),
                    ServicesPage(),
                    ServicesPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solaruserbrokendefault:
        return AppRoutes.messagesOnePage;
      case BottomBarEnum.Iconsaxlinearmessage:
        return "/";
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Save:
        return "/";
      case BottomBarEnum.Basilmenuoutlinedefault:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesOnePage:
        return MessagesOnePage();
      default:
        return DefaultWidget();
    }
  }
}
