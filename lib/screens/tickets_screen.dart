import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/ticket_text.dart';

import '../widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsSceen extends StatelessWidget {
  const TicketsSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                      child: TicketView(
                        ticket: ticketList[0],
                        isColor: true,
                      ),
                    ),
                    AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              AppColumnlayout(
                                firstText: "Dipayan Chakraborty",
                                secondText: "Passenger name",
                                alignment: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              AppColumnlayout(
                                firstText: "5221 364869",
                                secondText: "Passenger ID",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(20)),
                          AppLayoutBuilderWidget(
                            sections: 15,
                            isColor: false,
                            width: 5,
                          ),
                          Gap(AppLayout.getHeight(20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              AppColumnlayout(
                                firstText: "7477 690837",
                                secondText: "E-ticket number",
                                alignment: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              AppColumnlayout(
                                firstText: "B2S2G28",
                                secondText: "Booking code",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(20)),
                          AppLayoutBuilderWidget(
                            sections: 15,
                            isColor: false,
                            width: 5,
                          ),
                          Gap(AppLayout.getWidth(20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/paytm.png",
                                        scale: 11,
                                      ),
                                      Text(
                                        " *** 2462",
                                        style: Styles.headLineStyle3,
                                      )
                                    ],
                                  ),
                                  Gap(5),
                                  Text(
                                    "Payement Method",
                                    style: Styles.headLineStyle4,
                                  ),
                                ],
                              ),
                              AppColumnlayout(
                                firstText: " ₹25",
                                secondText: "Price",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(20)),
                          AppLayoutBuilderWidget(
                            sections: 15,
                            isColor: false,
                            width: 5,
                          ),
                          Container(),
                          //bar code
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(21),
                                    bottomLeft: Radius.circular(21))),
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            padding: EdgeInsets.only(top: 15, bottom: 15),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppLayout.getHeight(15)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(15)),
                                child: BarcodeWidget(
                                  barcode: Barcode.code128(),
                                  data: 'https://github.com//martinovovo',
                                  drawText: false,
                                  color: Styles.textColor,
                                  width: double.infinity,
                                  height: 70,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ]),
      ]),
    );
  }
}
