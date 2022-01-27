import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  //final UserModel user;
  AppBarWidget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(120),
          child: SizedBox(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(color: Colors.blueAccent),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("Site Oficial"),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red)),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black
                              // image: DecorationImage(
                              //   image: NetworkImage(user.photoUrl),
                              // ),
                              ),
                        )
                      ]),
                ),
                //Align(alignment: Alignment(0.0, 1.0), child: null)
              ],
            ),
          ),
        );
}
