import 'package:bagzz/app/app.locator.dart';
import 'package:bagzz/core/service/api/api_service.dart';
import 'package:bagzz/models/bag.dart';
import 'package:bagzz/models/category.dart';
import 'package:stacked/stacked.dart';

class HomeScreenViewModel extends BaseViewModel {
  final List<Bag> bagBannerList = [];
  List<Bag> bagsList = [];
  List<Category> categoryList = [];
  final apiService = locator<ApiService>();

  Future<void> init() async {
    setBusy(true);
    loadBagBannerData();
    await loadBagsData();
    loadCategoryData();
    // await Future.delayed(Duration(seconds: 2));
    setBusy(false);
  }

  void loadBagBannerData() {
    final List<Bag> bagBanner = [
      Bag(
        id: ' 1',
        image: 'assets/images/bag-header-01.png',
        title: " This season's best buy",
        name: "Artsy",
        price: 564,
        category: 'Wallet with chain',
        style: 'Style #36252 0YK0G 1000',
        desc:
            "As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain."
            "Material & care"
            """
        All products are made with carefully selected materials. Please handle with care for longer product life.
- Protect from direct light, heat and rain. Should it 
   become wet, dry it immediately with a soft cloth
- Store in the provided flannel bag or box
- Clean with a soft, dry cloth""",
        shipInfo: 'Lorem ipsum dolor sit amet, '
            'consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua.'
            ' Vitae congue mauris rhoncus aenean vel elit. ',
        payInfo: 'Lorem ipsum dolor sit amet, '
            'consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua.'
            ' Vitae congue mauris rhoncus aenean vel elit. ',
      ),
      Bag(
        id: '2',
        image: 'assets/images/bag-header-02.png',
        title: " This season's popular",
        name: "Berkely",
        price: 1364,
        category: 'Wallet with chain',
        style: 'Style #36252 0YK0G 1000',
        desc: 'Lorem ipsum dolor sit amet, '
            'consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua.'
            ' Vitae congue mauris rhoncus aenean vel elit. ',
        shipInfo: 'Lorem ipsum dolor sit amet, '
            'consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua.'
            ' Vitae congue mauris rhoncus aenean vel elit. ',
        payInfo: 'Lorem ipsum dolor sit amet, '
            'consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua.'
            ' Vitae congue mauris rhoncus aenean vel elit. ',
      ),
    ];
    bagBannerList.addAll(bagBanner);
  }

  Future<void> loadBagsData() async {
//     final List<Bag> bags = [
//       Bag(
//           id: 1,
//           image: 'assets/images/bag02.png',
//           title: " This season's best buy",
//           name: "Artsy",
//           price: 564,
//           category: 'Wallet with chain',
//           style: 'Style #36252 0YK0G 1000',
//           desc:
//               """As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.\n\nMaterial & care\n\nAll products are made with carefully selected materials. Please handle with care for longer product life.
// - Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth
// - Store in the provided flannel bag or box
// - Clean with a soft, dry cloth
//         """,
//           shipInfo:
//               """Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available."""
//               '\n\nReturn policy\n\n'
//               """Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.
//               """,
//           payInfo:
//               """We accepts the following forms of payment for online purchases:\n\n"""
//               """PayPal may not be used to purchase Made to Order Décor or DIY items.\n\nThe full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed."""),
//       Bag(
//           id: 2,
//           image: 'assets/images/bag03.png',
//           title: " This season's popular",
//           name: "Berkely",
//           price: 1364,
//           category: 'Wallet with chain',
//           style: 'Style #36252 0YK0G 1000',
//           desc:
//               """As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.\n\nMaterial & care\n\nAll products are made with carefully selected materials. Please handle with care for longer product life.
// - Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth
// - Store in the provided flannel bag or box
// - Clean with a soft, dry cloth
//         """,
//           shipInfo:
//               """Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available."""
//               '\n\nReturn policy\n\n'
//               """Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.
//               """,
//           payInfo:
//               """We accepts the following forms of payment for online purchases:\n\n"""
//               """PayPal may not be used to purchase Made to Order Décor or DIY items.\n\nThe full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed."""),
//       Bag(
//           id: 3,
//           image: 'assets/images/bag04.png',
//           title: " This season's latest",
//           name: "Capucinos",
//           price: 899,
//           category: 'Wallet with chain',
//           style: 'Style #36252 0YK0G 1000',
//           desc:
//               """As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.\n\nMaterial & care\n\nAll products are made with carefully selected materials. Please handle with care for longer product life.
// - Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth
// - Store in the provided flannel bag or box
// - Clean with a soft, dry cloth
//         """,
//           shipInfo:
//               """Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available."""
//               '\n\nReturn policy\n\n'
//               """Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.
//               """,
//           payInfo:
//               """We accepts the following forms of payment for online purchases:\n\n"""
//               """PayPal may not be used to purchase Made to Order Décor or DIY items.\n\nThe full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed."""),
//       Bag(
//           id: 4,
//           image: 'assets/images/bag05.png',
//           title: " This season's latest",
//           name: "Monogram",
//           price: 2999,
//           category: 'Wallet with chain',
//           style: 'Style #36252 0YK0G 1000',
//           desc:
//               """As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.\n\nMaterial & care\n\nAll products are made with carefully selected materials. Please handle with care for longer product life.
// - Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth
// - Store in the provided flannel bag or box
// - Clean with a soft, dry cloth
//         """,
//           shipInfo:
//               """Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available."""
//               '\n\nReturn policy\n\n'
//               """Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.
//               """,
//           payInfo:
//               """We accepts the following forms of payment for online purchases:\n\n"""
//               """PayPal may not be used to purchase Made to Order Décor or DIY items.\n\nThe full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed."""),
//
    bagsList = await apiService.getAllBags();
  }

  void loadCategoryData() async {
    final List<Category> category = [
      Category(
          id: 1,
          image: 'assets/images/model1.png',
          categoryTitle: 'Handle Bags'),
      Category(
          id: 2,
          image: 'assets/images/model2.png',
          categoryTitle: 'Crossbody Bags'),
      Category(
          id: 3,
          image: 'assets/images/model3.png',
          categoryTitle: 'Shoulder Bags'),
      Category(
          id: 4, image: 'assets/images/model4.png', categoryTitle: 'Tote Bags'),
    ];
    categoryList.addAll(category);
  }
}
