import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class CancerMamaScreen extends StatelessWidget {
  const CancerMamaScreen({super.key});

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
                      'Câncer de Mama',
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
                      'Prevenção e rastreio salvam vidas',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Realizar exames de rotina e observar as mamas faz parte do autocuidado e ajuda na detecção precoce do câncer de mama.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Quando procurar a UBS
              Text(
                '🚨 Quando procurar a UBS?',
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
                    BulletItem(text: 'Caroço (nódulo) na mama ou na axila'),
                    BulletItem(text: 'Secreção pelo mamilo'),
                    BulletItem(text: 'Retração da pele ou do mamilo'),
                    BulletItem(text: 'Pele com aspecto de casca de laranja'),
                    BulletItem(text: 'Vermelhidão, inchaço ou mudança no formato da mama'),
                    BulletItem(text: 'Nunca realizou mamografia (a partir dos 40 anos ou antes, se indicado)'),
                    BulletItem(text: 'Histórico familiar de câncer de mama'),
                    BulletItem(text: 'Dor em uma ou ambas as mamas'),
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
                    BulletItem(text: 'Observar suas mamas mensalmente, prestando atenção às mudanças'),
                    BulletItem(text: 'Agendar mamografia conforme orientação da UBS'),
                    BulletItem(text: 'Evitar tabagismo, excesso de álcool e sedentarismo'),
                    BulletItem(text: 'Manter alimentação saudável, rica em frutas, verduras e fibras'),
                    BulletItem(text: 'Frequentar a UBS regularmente para acompanhamento'),
                    BulletItem(text: 'Realizar atividades físicas regularmente'),
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
                      'Procure sempre a Unidade Básica de Saúde (UBS) para exames e orientação adequada.',
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