import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _darkMode = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(theme),
              const SizedBox(height: 24),
              _buildAccountSection(theme),
              const SizedBox(height: 16),
              _buildPreferencesSection(theme),
              const SizedBox(height: 16),
              _buildSubscriptionSection(theme),
              const SizedBox(height: 24),
              _buildDangerZone(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage:
              NetworkImage('https://i.pravatar.cc/150?u=a'),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'user8000b',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'email@duck.com',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.textTheme.bodySmall?.color?.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 12),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text('Editar perfil'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAccountSection(ThemeData theme) {
    return _SectionCard(
      title: 'Conta',
      children: [
        ListTile(
          leading: const Icon(Icons.person_outline),
          title: const Text('Nome de usuário'),
          subtitle: const Text('user8000b'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.email_outlined),
          title: const Text('E-mail'),
          subtitle: const Text('email@duck.com'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.lock_outline),
          title: const Text('Senha'),
          subtitle: const Text('Atualizar senha'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildPreferencesSection(ThemeData theme) {
    return _SectionCard(
      title: 'Preferências',
      children: [
        SwitchListTile(
          secondary: const Icon(Icons.dark_mode_outlined),
          title: const Text('Modo escuro'),
          value: _darkMode,
          onChanged: (value) {
            setState(() {
              _darkMode = value;
            });
          },
        ),
        const Divider(height: 0),
        SwitchListTile(
          secondary: const Icon(Icons.notifications_outlined),
          title: const Text('Notificações'),
          value: _notificationsEnabled,
          onChanged: (value) {
            setState(() {
              _notificationsEnabled = value;
            });
          },
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.language),
          title: const Text('Idioma'),
          subtitle: const Text('Português (Brasil)'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildSubscriptionSection(ThemeData theme) {
    return _SectionCard(
      title: 'Plano',
      children: [
        ListTile(
          leading: const Icon(Icons.workspace_premium_outlined),
          title: const Text('Seu plano'),
          subtitle: const Text('Free - atualize para desbloquear mais recursos'),
          trailing: FilledButton.tonal(
            onPressed: () {},
            child: const Text('Ver planos'),
          ),
        ),
        const Divider(height: 0),
        ListTile(
          leading: const Icon(Icons.history),
          title: const Text('Histórico de pagamentos'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildDangerZone(ThemeData theme) {
    return Center(
      child: OutlinedButton.icon(
        icon: const Icon(Icons.logout),
        style: OutlinedButton.styleFrom(
          foregroundColor: theme.colorScheme.error,
          side: BorderSide(color: theme.colorScheme.error),
        ),
        onPressed: () {},
        label: const Text('Sair da conta'),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SectionCard({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Card(
          color: theme.inputDecorationTheme.fillColor ??
              theme.colorScheme.surfaceVariant,
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color:
                  theme.colorScheme.outlineVariant.withOpacity(0.6),
            ),
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}