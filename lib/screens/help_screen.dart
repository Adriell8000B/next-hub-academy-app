import 'package:flutter/material.dart';
import 'package:nexthubacademy/widgets/help_bubble_widget.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  static const List<Map<String, String>> _helpItems = [
    {
      'title': 'Como funciona o acesso à plataforma?',
      'subTitle': 'A NextHub oferece flexibilidade total! Temos o PLANO FREE (100% gratuito) para quem está começando e o PLANO NEXT PRO para quem busca uma formação profissional avançada em Inteligência Artificial.',
    },
    {
      'title': 'A NEXTHUB é para iniciantes?',
      'subTitle': 'Sim! Nossa metodologia foi desenhada para todos os níveis. Se você está começando agora, nossas trilhas fundamentais te guiarão do zero absoluto até a construção de sistemas inteligentes reais.',
    },
    {
      'title': 'Quais os diferenciais do NEXT PRO',
      'subTitle': 'O PLANO NEXT PRO foca em alta performance. Inclui mentorias semanais ao vivo com especialistas, suporte dedicado, a hubIA personalizada para code review e certificações de peso para o mercado.',
    },
    {
      'title': 'Terei suporte em caso de dúvidas?',
      'subTitle': 'Com certeza. Além da nossa comunidade ativa no Discord e WhatsApp, membros PRO contam com suporte prioritário e o auxílio 24/7 da hubIA para resolução de problemas técnicos.',
    },
    {
      'title': 'Posso cancelar a assinatura?',
      'subTitle': 'Sim, acreditamos na transparência. O PLANO NEXT PRO pode ser cancelado a qualquer momento diretamente pela plataforma, sem multas ou burocracia, garantindo total liberdade sobre seu aprendizado.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          children: _helpItems.map((item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0), 
              child: HelpBubbleWidget(
                title: item['title']!,
                subTitle: item['subTitle']!,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}