import 'package:flutter/material.dart';

// Simple model to hold our feature data
class PlanFeature {
  final String title;
  final IconData icon;

  const PlanFeature(this.title, this.icon);
}

class PlanCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final List<PlanFeature> features; // Prop is now a list of PlanFeature objects

  const PlanCardWidget({
    super.key, 
    required this.title, 
    required this.price, 
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF162032),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            price,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white70),
          ),
          const SizedBox(height: 20),
          
          // Dynamically building the list from the props
          ...features.map((feature) => _buildListTile(feature)),
          
          const SizedBox(height: 24),

          _buildGradientButton(),
        ],
      ),
    );
  }

  Widget _buildListTile(PlanFeature feature) {
    return ListTile(
      leading: Icon(feature.icon, color: const Color(0xFF00FF88), size: 22),
      title: Text(
        feature.title, 
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      dense: true,
      contentPadding: EdgeInsets.zero, // Removes default side padding for a cleaner look
    );
  }

  Widget _buildGradientButton() {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF00FF88), Color(0xFF00BDFF)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: const Text(
          'Começar agora',
          style: TextStyle(color: Color(0xFF162032), fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}