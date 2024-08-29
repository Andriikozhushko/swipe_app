import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({Key? key}) : super(key: key);

  @override
  PersonalAccountState createState() => PersonalAccountState();
}

class PersonalAccountState extends State<PersonalAccount> {
  int _selectedOption = 0;
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.circular(10);

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
          'Личный кабинет',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset('assets/img/add_photo.png',
                        width: 100, height: 100),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Юля Ковалева',
                      style: appBarInfoPageText,
                    ),
                    Text(
                      'email@gmail.com',
                      style: accountDescriptionText,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                border: Border.all(color: whitee1),
                borderRadius: borderRadius,
              ),
              child: ExpansionTile(
                shape: const Border(),
                collapsedShape: const Border(),
                initiallyExpanded: false,
                title: const Text(
                  'Мои контакты',
                  style: accountPageTitleText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Имя',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Юля',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Фамилия',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Туст',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Телефон',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '+380 91 234 56 78',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Email',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'email@gmail.com',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                border: Border.all(color: whitee1),
                borderRadius: borderRadius,
              ),
              child: ExpansionTile(
                shape: const Border(),
                collapsedShape: const Border(),
                initiallyExpanded: false,
                title: const Text(
                  'Контакты агента',
                  style: accountDescriptionText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Имя',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Юля',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Фамилия',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Туст',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Телефон',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '+380 91 234 56 78',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Email',
                          style: accountPageTitleFieldText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'email@gmail.com',
                            hintStyle: labelAdsPageText,
                            filled: true,
                            fillColor: grey20da,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                border: Border.all(color: whitee1),
                borderRadius: borderRadius,
              ),
              child: ExpansionTile(
                shape: const Border(),
                collapsedShape: const Border(),
                initiallyExpanded: false,
                title: const Text(
                  'Управление подпиской',
                  style: accountDescriptionText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Оплачено до',
                              style: accountSecondaryText,
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              '23.03.2020',
                              style: accountAccentText,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [gradientgreenlight1, blueaccent],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login2step');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: transparent,
                              shadowColor: transparent,
                            ),
                            child: const Text(
                              'Продлить',
                              style: floatingButtonText,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Отменить автопродление',
                          style: accountThinText,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                border: Border.all(color: whitee1),
                borderRadius: borderRadius,
              ),
              child: ExpansionTile(
                shape: const Border(),
                collapsedShape: const Border(),
                initiallyExpanded: false,
                title: const Text(
                  'Уведомления',
                  style: accountDescriptionText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildRadioItem('Мне', 0),
                        _buildRadioItem('Мне и агенту', 1),
                        _buildRadioItem('Агенту', 2),
                        _buildRadioItem('Отключить', 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 35, 10, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Переключить звонки\nи сообщения на агента',
                    style: accountDescriptionText,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isEnabled = !_isEnabled;
                      });
                    },
                    child: Container(
                      width: 45.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color:
                            _isEnabled ? darkgreen40 : black40,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: AnimatedAlign(
                          alignment: _isEnabled
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          child: Container(
                            width: 25.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _isEnabled
                                  ? gradientbluegrin1
                                  : greyB5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Политика конфиденциальности',
              style: accountGreenThinText,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioItem(String title, int value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Container(
        height: 44,
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: whitef8,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: labelAdsPageText,
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedOption == value
                    ? blueaccent
                    : whitee8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
