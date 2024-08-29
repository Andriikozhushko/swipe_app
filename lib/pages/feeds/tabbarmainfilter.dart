import 'package:flutter/material.dart';
import 'package:swipe/pages/feeds/secondarymarketcontent.dart';
import '../../style/colors.dart';
import '../../style/font.dart';
import 'alltabcontent.dart';
import 'cottagemarketcontent.dart';
import 'newmarketcontent.dart';

class MyFilter extends StatefulWidget {
  const MyFilter({Key? key}) : super(key: key);

  @override
  MyFilterState createState() => MyFilterState();
}

class MyFilterState extends State<MyFilter> {
  int _selectedIndex = 0;
  final bool _isEnabled = false;

  final List<String> categories = [
    'Вторичный рынок',
    'Новостройки',
    'Все',
    'Коттеджи',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Мои фильтры',
          style: appBarInfoPageText,
        ),
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/img/x-circle.png'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Column(
        children: [SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                categories.length,
                    (index) => CategoryButton(
                  category: categories[index],
                  index: index,
                  selectedCategoryIndex: _selectedIndex,
                  onCategorySelected: _onCategorySelected,
                ),
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                SingleChildScrollView(
                  child: SecondaryMarketTabContent(isEnabled: _isEnabled),
                ),
                SingleChildScrollView(
                  child: NewMarketTabContent(isEnabled: _isEnabled),
                ),
                SingleChildScrollView(
                  child: AllTabContent(isEnabled: _isEnabled),
                ),
                SingleChildScrollView(
                  child: CottageMarketTabContent(isEnabled: _isEnabled),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onCategorySelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final int index;
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const CategoryButton({super.key,
    required this.category,
    required this.index,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final selected = selectedCategoryIndex == index;

    return InkWell(
      onTap: () {
        onCategorySelected(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 5),
        decoration: BoxDecoration(
          color: selected ? green : white,
          border: selected
              ? null
              : Border.all(
            color: blueaccentA4,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          gradient: selected
              ? const LinearGradient(
            colors: [
              gradientgreenlight1,
              gradientgreenlight2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
              : null,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          category,
          style: TextStyle(
            color: selected ? white : blueaccentA4,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const MyFilter(),
    ),
  );
}
