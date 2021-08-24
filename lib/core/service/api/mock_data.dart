import 'package:bagzz/models/bag.dart';
import 'package:bagzz/models/category.dart';
import 'package:rxdart/rxdart.dart';

final List<Bag> MOCK_BAGS = [
  Bag(
    id: 1,
    image: 'assets/images/bag02.png',
    title: " This season's best buy",
    name: "Artsy",
    price: 564,
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
  Bag(
    id: 2,
    image: 'assets/images/bag03.png',
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
  Bag(
    id: 3,
    image: 'assets/images/bag04.png',
    title: " This season's latest",
    name: "Capucinos",
    price: 899,
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
  Bag(
    id: 4,
    image: 'assets/images/bag05.png',
    title: " This season's latest",
    name: "Monogram",
    price: 2999,
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
  Bag(
    id: 5,
    image: 'assets/images/bag05.png',
    title: " This season's latest",
    name: "Monogram",
    price: 2999,
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
final List<Category> MOCK_CATEGORIES = [
  Category(
      id: 1, image: 'assets/images/model1.png', categoryTitle: 'Handle Bags'),
  Category(
      id: 2,
      image: 'assets/images/model2.png',
      categoryTitle: 'Crossbody Bags'),
  Category(
      id: 3, image: 'assets/images/model3.png', categoryTitle: 'Shoulder Bags'),
  Category(
      id: 4, image: 'assets/images/model4.png', categoryTitle: 'Tote Bags'),
];

BehaviorSubject<Map<Bag, int>> MOCK_CART_STREAM = BehaviorSubject.seeded({});
