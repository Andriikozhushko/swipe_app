import 'package:flutter/material.dart';
import '../../style/colors.dart';
import '../../style/font.dart';

class AllTabContent extends StatefulWidget {
  final bool isEnabled;
  const AllTabContent({Key? key, required this.isEnabled}) : super(key: key);

  @override
  AllTabContentState createState() => AllTabContentState();
}

class AllTabContentState extends State<AllTabContent> {
  late bool _isEnabled;

  @override
  void initState() {
    super.initState();
    _isEnabled = widget.isEnabled;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Вид недвижимости',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Вторичный рынок',
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
                height: 30,
              ),
              const Text(
                'Статус дома',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Сдан',
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
                height: 30,
              ),
              const Text('Район', style: accountPageTitleFieldText),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Центральный',
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
                height: 30,
              ),
              const Text(
                'Микрорайон',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Донская',
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
                height: 30,
              ),
              const Text(
                'Количество комнат',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '1к',
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
                height: 30,
              ),
              const Text(
                'Цена',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'От 20 000 ₴',
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
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'До 50 000 ₴',
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
                height: 30,
              ),
              const Text(
                'Площадь',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'От 70 м²',
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
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'До 120 м²',
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
                height: 30,
              ),
              const Text(
                'Назначение',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Квартира',
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
                height: 30,
              ),
              const Text(
                'Условия покупки',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ипотека',
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
                height: 30,
              ),
              const Text(
                'Состояние',
                style: accountPageTitleFieldText,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Черновая',
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
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
                child: Column(
                  children: [],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Сохранить фильтры',
                    style: switchFilterText,
                  ),
                  const SizedBox(
                    width: 35,
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
                        color: _isEnabled ? darkgreen40 : black40,
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
                              color: _isEnabled ? gradientbluegrin1 : greyB5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 266,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Сохранив настроенные фильтры вы будете автоматически получать уведомления о появлении подходящего предложения',
                          style: contentTabText,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Сохранений доступно: 4',
                          style: contentTabText,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 52,
                  width: 280,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [gradientgreenlight1, blueaccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(35),
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
                      'Показать 245 объявлений',
                      style: floatingButtonText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
