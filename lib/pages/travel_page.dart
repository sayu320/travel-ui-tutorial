import 'package:flutter/material.dart';
import 'package:travel_ui_tutorial/widets/hotel_tile.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _background(context),
        _locationsList(context),
      ],
    );
  }

  Widget _background(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Thailand Islands",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "15 June - 18 June",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Widget _locationsList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.58,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15)
          )
        ),
        child:  ListView(children: const [
       HotelTile(
        name: "Hilton Thai", 
        image: "https://images.pexels.com/photos/9038000/pexels-photo-9038000.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
         rating: 4.3, 
         price: 195
         ),
          HotelTile(
        name: "Hyatt", 
        image: "https://images.pexels.com/photos/5599599/pexels-photo-5599599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
         rating: 4.8, 
         price: 200
         ),
          HotelTile(
        name: "Marriott", 
        image: "https://images.pexels.com/photos/5608201/pexels-photo-5608201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
         rating: 4.5, 
         price: 150
         ),
          HotelTile(
        name: "Arcade", 
        image: "https://images.pexels.com/photos/19604928/pexels-photo-19604928/free-photo-of-modern-house-with-pool-on-patio.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
         rating: 4.7, 
         price: 185
         )
        ],),
      ),
    );
  }
}
