import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class CicloMenstrualScreen extends StatelessWidget {
  const CicloMenstrualScreen({super.key});

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
                  Expanded(
                    child: Text(
                      'Conheça seu ciclo menstrual',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.go('/educational-content'),
                    icon: const Icon(Icons.arrow_back_ios),
                    color: AppColors.textDark,
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Introdução
              CustomCard(
                backgroundColor: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Entenda melhor seu corpo',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'O ciclo menstrual costuma variar entre 21 e 36 dias, com sangramento de 3 a 7 dias. Pequenas variações são normais, especialmente em adolescentes, pós-parto e perto da menopausa.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // O que é normal?
              Text(
                '✅ O que é normal?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.secondary2,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 12),
              CustomCard(
                backgroundColor: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BulletItem(text: 'Duração do ciclo: entre 21 e 36 dias'),
                    BulletItem(text: 'Duração do sangramento: 3 a 7 dias'),
                    BulletItem(text: 'Pequenas variações de duração e intensidade'),
                    BulletItem(text: 'Variações mais comuns em adolescentes, após o parto e perto da menopausa'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // O que você pode fazer em casa
              Text(
                '🏠 O que você pode fazer em casa',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.secondary2,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 12),
              CustomCard(
                backgroundColor: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BulletItem(text: 'Anotar o ciclo menstrual (dia de início, duração, intensidade e sintomas)'),
                    BulletItem(text: 'Fazer compressas mornas para aliviar cólicas'),
                    BulletItem(text: 'Manter boa hidratação e evitar excesso de café e sal durante o período'),
                    BulletItem(text: 'Praticar hábitos de relaxamento (alongamento ou respiração profunda)'),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Aviso importante
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.accent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.accent.withOpacity(0.3)),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.warning_amber_rounded, color: AppColors.accent, size: 32),
                    const SizedBox(height: 12),
                    Text(
                      '⚠️ Essas informações não substituem avaliação médica.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.accent,
                            fontWeight: FontWeight.w700,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Procure sempre a Unidade Básica de Saúde (UBS) para confirmação e acompanhamento.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget auxiliar para bullets (reutilizável)
class BulletItem extends StatelessWidget {
  final String text;
  const BulletItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18, color: AppColors.textMedium)),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textMedium,
                    height: 1.5,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}