import 'package:flutter/material.dart';

class NexthubAboutWidget extends StatelessWidget {
  const NexthubAboutWidget({super.key});

  final List<Map<String, dynamic>> _aboutData = const [
    {
      'title': 'Mentoria com Victor Vicente',
      'subtitle': 'Lives semanais exclusivas e mentoria direta com um dos principais educadores tech do Brasil.',
      'icon': Icons.paste,
    },
    {
      'title': 'Projetos reais',
      'subtitle': 'Desenvolva aplicações completas que empresas realmente usam. Do planejamento ao deploy.',
      'icon': Icons.school_rounded,
    },
    {
      'title': 'Certificação profissional',
      'subtitle': 'Certificados reconhecidos pelo mercado com validação de habilidades técnicas reais comprovadas.',
      'icon': Icons.verified,
    },
    {
      'title': 'Comunidade VIP',
      'subtitle':'Acesso ao nosso servidor no Discord com mais de 800 desenvolvedores. Networking e colaboração constante.',
      'icon': Icons.group,
    },
    {
      'title': 'HubIA',
      'subtitle':'Nossa inteligência exclusiva que te ajuda 24/7 com dúvidas, correção de bugs e revisão de código em tempo real.',
      'icon': Icons.group,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _aboutData.map((data) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: _buildAboutTile(
              data['title']!,
              data['subtitle']!,
              data['icon'] as IconData,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildAboutTile(String title, String subtitle, IconData icon) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF162032),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: Colors.blueAccent),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
