import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class ClimaterioMenopausaScreen extends StatelessWidget {
  const ClimaterioMenopausaScreen({super.key});

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
                      'Climatério e Menopausa',
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
                      'Uma fase natural da vida da mulher',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'O climatério é a transição da fase reprodutiva para a não reprodutiva (geralmente entre 40 e 65 anos). A menopausa é o marco principal: 12 meses seguidos sem menstruação (geralmente aos 48-50 anos).',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textMedium,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Sintomas comuns
              Text(
                '🔥 Sintomas comuns',
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
                    BulletItem(text: 'Ondas de calor (fogachos) e suores noturnos'),
                    BulletItem(text: 'Alterações do sono e irritabilidade'),
                    BulletItem(text: 'Ansiedade e oscilações de humor'),
                    BulletItem(text: 'Irregularidade menstrual (na transição)'),
                    BulletItem(text: 'Diminuição da libido, ressecamento vaginal e dor na relação sexual'),
                    BulletItem(text: 'Ardor ou coceira vaginal, urgência urinária e infecções urinárias recorrentes'),
                    BulletItem(text: 'Ganho de peso e diminuição da massa óssea'),
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
                    BulletItem(text: 'Ao perceber os primeiros sinais e sintomas'),
                    BulletItem(text: 'Sintomas intensos que afetam o sono ou a qualidade de vida'),
                    BulletItem(text: 'Sangramento após 1 ano sem menstruar'),
                    BulletItem(text: 'Dor durante relações sexuais'),
                    BulletItem(text: 'Qualquer sintoma citado acima'),
                    BulletItem(text: 'Quando estiver na faixa etária indicada (40 a 65 anos)'),
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
                  children: [
                    const Text(
                      'Para fogachos e suores noturnos:',
                      style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.textDark),
                    ),
                    const SizedBox(height: 8),
                    const BulletItem(text: 'Dormir em ambiente bem ventilado'),
                    const BulletItem(text: 'Usar roupas em camadas e tecidos que deixem a pele respirar'),
                    const BulletItem(text: 'Beber água ou suco ao sentir o fogacho'),
                    const BulletItem(text: 'Evitar cigarro, álcool e cafeína'),
                    const BulletItem(text: 'Fazer um diário para identificar gatilhos'),
                    const SizedBox(height: 16),
                    const Text(
                      'Para problemas de sono:',
                      style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.textDark),
                    ),
                    const SizedBox(height: 8),
                    const BulletItem(text: 'Praticar atividade física (nunca perto da hora de dormir)'),
                    const BulletItem(text: 'Manter horários regulares de sono e evitar cochilos'),
                    const BulletItem(text: 'Evitar refeições pesadas e cafeína à tarde'),
                    const BulletItem(text: 'Criar um ambiente confortável para dormir'),
                    const SizedBox(height: 16),
                    const Text(
                      'De maneira geral:',
                      style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.textDark),
                    ),
                    const SizedBox(height: 8),
                    const BulletItem(text: 'Manter alimentação saudável e hidratação'),
                    const BulletItem(text: 'Praticar atividade física regularmente'),
                    const BulletItem(text: 'Evitar cigarro e excesso de álcool'),
                    const BulletItem(text: 'Considerar lubrificantes vaginais durante a relação sexual'),
                    const BulletItem(text: 'Buscar mais informações sobre essa fase natural'),
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
                      'Procure sempre a Unidade Básica de Saúde (UBS) para orientação e, se necessário, terapia hormonal.',
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