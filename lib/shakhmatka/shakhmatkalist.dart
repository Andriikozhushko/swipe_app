import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/font.dart';

class ShakhmatkaList extends StatelessWidget {
  const ShakhmatkaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitee4,
      appBar: AppBar(
        title: const Text(
          '32 квартиры',
          style: individualTitleText,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: greyE9,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/shakhmatkatable');
                },
                child: const Text(
                  'шахматка',
                  style: actionButtonText,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/shakhmatkapage');
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, left: 5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: white,
                                      ),
                                      height: 158,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, right: 15, top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  '№232',
                                                  style: schemeIndividualPageText,
                                                ),
                                                const SizedBox(
                                                  height: 9,
                                                ),
                                                const Text(
                                                  '3 400 000 ₴',
                                                  style: titlePriceCardApartsText,
                                                ),const SizedBox(
                                                  height: 2,
                                                ),
                                                const Text(
                                                  '1-к квартира\n28.5 м², 1/8 эт.',
                                                  style: titleApartsText,
                                                ),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                const Text(
                                                  'Черновая',
                                                  style: appBarText,
                                                ),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                      color: black,
                                                      fontSize: 16.0,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '30 000 ₴ ',
                                                        style: individualRichText,
                                                      ),
                                                      TextSpan(
                                                        text: 'и за м²',
                                                        style: individualMetrText,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'assets/img/schemeaparts.png',
                                                    width: 158,
                                                    height: 135,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 70),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomExpansionTile(
              title: Text(
                'Корпус 2, секция 4',
                style: dropdownListText,
              ),
              options: [
                'Корпус 2, секция 4',
                'Корпус 2, секция 3',
                'Корпус 2, секция 2',
                'Корпус 2, секция 1',
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 278,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              gradientgreenlight1,
              gradientgreenlight2,
            ],
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/shakhmatkafilter');
          },
          backgroundColor: transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Stack(
            alignment: Alignment.center,
            children: [
              Text(
                'Фильтр',
                style: floatingButtonText,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  final List<String> options;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.options,
  }) : super(key: key);

  @override
  CustomExpansionTileState createState() => CustomExpansionTileState();
}

class CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = (widget.title as Text).data!;
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _handleOptionChange(String value) {
    setState(() {
      _selectedItem = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            _toggleExpanded();
          },
          child: Container(
            color: transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: whitef5,
                  height: 17,
                ),
                Container(
                  color: whitef5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            if (_isExpanded)
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _isExpanded
                                        ? blueaccent
                                        : whited8,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: _isExpanded ? const EdgeInsets.only(left: 10.0) : const EdgeInsets.only(left: 20.0),
                              child: Text(
                                _selectedItem,
                                style: listNotariusTitleText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          width: 54,
                          height: 23,
                          decoration: BoxDecoration(
                            color: blueaccentA4,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              '2020/2',
                              style: mapLabelSecondaryText,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Icon(
                            _isExpanded ? Icons.expand_less : Icons.expand_more),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: whitef5,
                  height: 6,
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.options
                .where((option) => option != _selectedItem)
                .map((option) {
              return Container(
                color: whitef5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: GestureDetector(
                    onTap: () {
                      _handleOptionChange(option);
                      _toggleExpanded();
                    },
                    child: Container(
                      color: whitef5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 16,
                              height: 16,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _selectedItem == option
                                    ? blueaccent
                                    : whited8,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                option,
                                style: TextStyle(

                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: _selectedItem == option
                                      ? blueaccent
                                      : black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 54.0),
                            child: Container(
                              width: 54,
                              height: 23,
                              decoration: BoxDecoration(
                                color: blueaccentA4,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  '2020/2',
                                  style: mapLabelSecondaryText,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        Container(
          color: whitef5,
          height: 11,
        ),
      ],
    );
  }
}
