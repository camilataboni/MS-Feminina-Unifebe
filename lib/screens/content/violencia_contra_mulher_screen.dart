import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class ViolenciaContraMulherScreen extends StatelessWidget {
  const ViolenciaContraMulherScreen({super.key});

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
                      'Violência Contra a Mulher',
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
                      'Você não está sozinha',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'A violência contra a mulher é qualquer atitude ou comportamento motivado pelo fato de ela ser mulher que provoque morte, dor, sofrimento ou prejuízo físico, sexual ou emocional.\n\nIsso pode acontecer tanto em espaços públicos quanto dentro de casa, no ambiente familiar ou em um relacionamento.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Quando procurar ajuda
              Text(
                '🚨 Quando procurar ajuda?',
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
                    BulletItem(text: 'Se sentir medo, vergonha, culpa ou estiver sendo ameaçada'),
                    BulletItem(text: 'Se houver agressões físicas, sexuais ou controle de sua rotina'),
                    BulletItem(text: 'Se precisar de apoio para sair de uma relação abusiva'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // O que você pode fazer
              Text(
                '🛡️ O que você pode fazer',
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
                    BulletItem(text: 'Buscar atendimento na UBS, CRAS, CREAS ou Delegacia da Mulher'),
                    BulletItem(text: 'Ligar para o 180 (Central de Atendimento à Mulher) – gratuito e sigiloso'),
                    BulletItem(text: 'Utilizar o Violentômetro para identificar sinais de abuso'),
                    BulletItem(text: 'Pedir ajuda a alguém de confiança e não se isolar'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Violentômetro (destaque especial)
              CustomCard(
                backgroundColor: AppColors.accent.withOpacity(0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '📊 Conheça o Violentômetro',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.accent,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Use a escala do Violentômetro para identificar comportamentos abusivos. Quanto mais alto na escala, maior o risco. Não espere chegar ao final!',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '🔴 ALERTA: Ações como chutar, agredir fisicamente, ameaçar de morte ou feminicídio exigem ajuda imediata.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.accent,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
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
                      '⚠️ Essas informações não substituem avaliação profissional.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.accent,
                            fontWeight: FontWeight.w700,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Procure ajuda imediata. Você merece viver sem violência.',
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