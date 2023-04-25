import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';

class AboutMany extends StatelessWidget {
  const AboutMany({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Оплачено: 2000 рублей'),
        SizedBox(height: 10),
        Text('Долг по оплате: 0 рублей'),
        SizedBox(height: 20),
      ],
    );
  }
}

class AboutManyForTeacher extends StatelessWidget {
  const AboutManyForTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        children: [
          DefaultButton(
              text: 'Отчет по общежитию',
              onPressed: () => appRouter.openBottomSheet(
                  context: context,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Оплатили: 269'),
                      SizedBox(height: 20),
                      Text('Не оплатили: 28'),
                      SizedBox(height: 50),
                    ],
                  ))),
          const SizedBox(height: 10),
          DefaultButton(
              text: 'Отчет по группе',
              onPressed: () => appRouter.openBottomSheet(
                  context: context, child: const AboutRooms())),
          const SizedBox(height: 40),
          const Text('Поиск по студенту:'),
          const SizedBox(height: 10),
          const SearchInputField(hint: 'ФИО/группа/комната'),
          const SizedBox(height: 40),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            child: Column(children: const [
              Text('ФИО'),
              SizedBox(height: 10),
              Text('Оплачено: 2000'),
              SizedBox(height: 10),
              Text('Долг: 0'),
            ]),
          ),
        ],
      ),
    );
  }
}

class AboutRooms extends StatelessWidget {
  const AboutRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      children: [
        const Text('1 курс:'),
        DefaultButton(text: 'БАТ', onPressed: () {}),
        DefaultButton(text: 'БУС', onPressed: () {}),
        DefaultButton(text: 'БМА', onPressed: () {}),
        DefaultButton(text: 'ББПэ', onPressed: () {}),
        DefaultButton(text: 'БТС', onPressed: () {}),
        const SizedBox(height: 30),
        const Text('2 курс:'),
        DefaultButton(text: 'БАТ', onPressed: () {}),
        DefaultButton(text: 'БУС', onPressed: () {}),
        DefaultButton(text: 'БМА', onPressed: () {}),
        DefaultButton(text: 'ББПэ', onPressed: () {}),
        DefaultButton(text: 'БТС', onPressed: () {}),
        const SizedBox(height: 30),
        const Text('3 курс:'),
        DefaultButton(text: 'БАТ', onPressed: () {}),
        DefaultButton(text: 'БУС', onPressed: () {}),
        DefaultButton(text: 'БМА', onPressed: () {}),
        DefaultButton(text: 'ББПэ', onPressed: () {}),
        DefaultButton(text: 'БТС', onPressed: () {}),
        const SizedBox(height: 30),
        const Text('4 курс:'),
        DefaultButton(text: 'БАТ', onPressed: () {}),
        DefaultButton(text: 'БУС', onPressed: () {}),
        DefaultButton(text: 'БМА', onPressed: () {}),
        DefaultButton(text: 'ББПэ', onPressed: () {}),
        DefaultButton(text: 'БТС', onPressed: () {}),
      ],
    );
  }
}
