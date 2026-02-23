import 'package:flutter/material.dart';
import 'package:nexthubacademy/widgets/course_bubble_widget.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      CourseBubbleWidget(
        title: 'Introdução ao N8N',
        subtitle: 'Aprenda os fundamentos do n8n, uma das ferramentas de automação mais poderosas e flexíveis do mercado.',
        image: 'https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/n8n.png',
        size: 80,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Flutter',
        subtitle: 'Fundamentos de Flutter para iniciantes. O guia essencial para criar seu primeiro app.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/flutter.png',
        size: 90,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Javascript',
        subtitle: 'Fundamentos de Javascript para iniciantes. Aprenda lógica de programação, variáveis, funções, condicionais, loops, manipulação do DOM, eventos e consumo de APIs com projetos práticos.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/javascript-light.png',
        size: 80,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Go',
        subtitle: 'Go para iniciantes. Aprenda goroutines, structs e ponteiros com projetos práticos.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/go.png',
        size: 80,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao C++',
        subtitle: 'Fundamentos de C++ para iniciantes. O primeiro passo para dominar a linguagem por trás dos grandes sistemas e jogos.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/cpp.png',
        size: 100,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Java',
        subtitle: 'Fundamentos de Java para iniciantes. Aprenda a linguagem que move o mundo corporativo, explorando Programação Orientada a Objetos, tipos de dados e coleções com projetos robustos.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/java.png',
        size: 120,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Nodejs',
        subtitle: 'Fundamentos de Nodejs para iniciantes. O guia para sua primeira API.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/nodejs.png',
        size: 90,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Rust',
        subtitle: 'Fundamentos de Rust para iniciantes. Dominando a segurança de memória e performance.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/rust.png',
        size: 90,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Python',
        subtitle: 'Fundamentos de Python para iniciantes. O ponto de partida ideal para Data Science, Inteligência Artificial e automação de tarefas.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/python.png',
        size: 90,
      ),
      CourseBubbleWidget(
        title: 'Introdução ao Ruby',
        subtitle: 'Fundamentos de Ruby para iniciantes. O primeiro passo para aplicações escaláveis com Ruby on Rails.',
        image: 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/ruby.png',
        size: 90,
      ),
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: courses
                .expand((widget) => [widget, const SizedBox(height: 2)])
                .toList()..removeLast(),
          ),
        ),
      ),
    );
  }
}