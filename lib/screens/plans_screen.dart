import 'package:flutter/material.dart';
import 'package:nexthubacademy/widgets/plan_card_widget.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PlanCardWidget(
                title: 'Plano FREE',
                price: 'Grátis',
                features: [
                  PlanFeature('Cursos fundamentais', Icons.code),
                  PlanFeature('Comunidade discord', Icons.discord),
                  PlanFeature('Projetos práticos', Icons.verified),
                  PlanFeature('Certificados', Icons.shield),
                  PlanFeature('Trilhas de estudo', Icons.auto_graph),
                ],
              ),

              const SizedBox(height: 24,),
              PlanCardWidget(
                title: 'Plano PREMIUM',
                price: 'R\$ 109,00 / mês',
                features: [
                  PlanFeature('Tudo do plano free e mais:', Icons.add),
                  PlanFeature('Aesso total e ilimitado', Icons.workspace_premium),
                  PlanFeature('Mentorias semanais ao vivo', Icons.emergency_recording),
                  PlanFeature('Hubia 24/7', Icons.mark_chat_read_outlined),
                  PlanFeature('Suporte prioritário', Icons.support),
                  PlanFeature('Grupo VIP no whatsapp', Icons.chat),
                  PlanFeature('Hubia para carreira', Icons.document_scanner),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
