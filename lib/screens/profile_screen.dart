import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _editMode = false;

  final TextEditingController _nameController =
      TextEditingController(text: 'Maria Silva');
  final TextEditingController _emailController =
      TextEditingController(text: 'maria@exemplo.com');
  final TextEditingController _birthdateController =
      TextEditingController(text: '15/05/1990');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _birthdateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meu Perfil',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _editMode = !_editMode;
                      });
                    },
                    icon: Icon(
                      _editMode ? Icons.close : Icons.edit,
                      color: AppColors.accent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // Profile Avatar
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.secondary2,
                            AppColors.secondary3,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.accent.withOpacity(0.2),
                            blurRadius: 16,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    if (_editMode) ...[
                      const SizedBox(height: 12),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                        label: const Text('Mudar Foto'),
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.accent,
                        ),
                      ),
                    ] else ...[
                      const SizedBox(height: 16),
                      Text(
                        'Maria Silva',
                        style:
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  color: AppColors.textDark,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'maria@exemplo.com',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.textLight,
                            ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Personal Information
              Text(
                'Informações Pessoais',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.textDark,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 16),

              if (_editMode) ...[
                CustomTextField(
                  label: 'Nome Completo',
                  hintText: 'Seu nome',
                  controller: _nameController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'E-mail',
                  hintText: 'seu.email@exemplo.com',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'Data de Nascimento',
                  hintText: 'DD/MM/AAAA',
                  controller: _birthdateController,
                ),
              ] else ...[
                CustomCard(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nome',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: AppColors.textLight,
                            ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Maria Silva',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: AppColors.textDark,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                CustomCard(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: AppColors.textLight,
                            ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'maria@exemplo.com',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: AppColors.textDark,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                CustomCard(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data de Nascimento',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: AppColors.textLight,
                            ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '15/05/1990',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: AppColors.textDark,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 32),

              // Settings
              Text(
                'Configurações',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.textDark,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 16),
              _buildSettingItem(
                context,
                icon: Icons.notifications,
                title: 'Notificações',
                subtitle: 'Gerenciar alertas e lembretes',
                onTap: () {},
              ),
              _buildSettingItem(
                context,
                icon: Icons.privacy_tip,
                title: 'Privacidade e Segurança',
                subtitle: 'Controle sua privacidade',
                onTap: () {},
              ),
              _buildSettingItem(
                context,
                icon: Icons.language,
                title: 'Idioma',
                subtitle: 'Português (Brasil)',
                onTap: () {},
              ),
              const SizedBox(height: 32),

              if (_editMode) ...[
                Row(
                  children: [
                    Expanded(
                      child: SecondaryButton(
                        text: 'Cancelar',
                        onPressed: () {
                          setState(() {
                            _editMode = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: PrimaryButton(
                        text: 'Salvar',
                        onPressed: () {
                          setState(() {
                            _editMode = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
              ],

              // Logout button
              PrimaryButton(
                text: 'Sair da Conta',
                onPressed: () {
                  _showLogoutDialog(context);
                },
              ),
              const SizedBox(height: 20),

              // About
              Center(
                child: Column(
                  children: [
                    Text(
                      'Minha Saúde Feminina',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'v1.0.0',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.textLight,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return CustomCard(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.secondary1.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                icon,
                color: AppColors.secondary2,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.textDark,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textLight,
                      ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColors.textHint,
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: Text(
            'Sair da Conta?',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.textDark,
                  fontWeight: FontWeight.w600,
                ),
          ),
          content: Text(
            'Tem certeza que deseja sair da sua conta?',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textMedium,
                ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancelar',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.textMedium,
                    ),
              ),
            ),
            TextButton(
              onPressed: () {
                context.go('/login');
              },
              child: Text(
                'Sair',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.accent,
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
