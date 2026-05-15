import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class DorArdorUrinarioScreen extends StatelessWidget {
  const DorArdorUrinarioScreen({super.key});

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
                      'Dor ou ardor ao urinar',
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
                      'Sintomas urinários: quando se preocupar?',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Dor ou ardor ao urinar pode ser sinal de infecção urinária ou outras condições. Observe os sintomas associados para saber quando procurar ajuda.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Sintomas associados
              Text(
                '❓ Sintomas associados',
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
                    BulletItem(text: 'Sente urgência em urinar?'),
                    BulletItem(text: 'Sente ardor ao urinar? (apenas uma vez? após relação? mais de uma vez?)'),
                    BulletItem(text: 'Aumento da frequência urinária?'),
                    BulletItem(text: 'Sente dor na região inferior do abdômen ou nas costas?'),
                    BulletItem(text: 'Teve febre?'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Quando procurar a UBS
              Text(
                '🚨 Quando procurar a UBS imediatamente?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.accent,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 12),
              CustomCard(
                backgroundColor: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BulletItem(text: 'Ardor persistente, dor abdominal intensa ou vontade frequente de urinar'),
                    BulletItem(text: 'Presença de sangue na urina'),
                    BulletItem(text: 'Febre, dor lombar ou calafrios'),
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
                      'Procure sempre a Unidade Básica de Saúde (UBS) para confirmação e tratamento adequado.',
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