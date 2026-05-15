import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/config/theme.dart';
import 'package:minha_saude_feminina/widgets/custom_widgets.dart';

class EducationalContentScreen extends StatefulWidget {
  const EducationalContentScreen({super.key});

  @override
  State<EducationalContentScreen> createState() =>
      _EducationalContentScreenState();
}

class _EducationalContentScreenState extends State<EducationalContentScreen> {
  int _selectedCategory = 0;

  final List<String> _categories = [
    'Todos',
    'Sintomas',
    'Ciclo Menstrual',
    'Prevenção',
    'Bem-estar',
  ];

  final List<ContentItem> _articles = [
    ContentItem(
      title: 'Corrimento vaginal',
      description: 'O que é normal e quando procurar a UBS',
      category: 'Sintomas',
      duration: '10 min',
      image: '💧',
      route: '/content/corrimento-vaginal',
    ),
    ContentItem(
      title: 'Cólica',
      description: 'Dor na parte baixa da barriga: quando se preocupar',
      category: 'Sintomas',
      duration: '8 min',
      image: '🤕',
      route: '/content/colica',
    ),
    ContentItem(
      title: 'Atraso menstrual',
      description: 'Quando o atraso da menstruação merece atenção',
      category: 'Sintomas',
      duration: '7 min',
      image: '📅',
      route: '/content/atraso-menstrual',
    ),
    ContentItem(
      title: 'Sangramento fora do período',
      description: 'Sangramento irregular: o que fazer',
      category: 'Sintomas',
      duration: '9 min',
      image: '🩸',
      route: '/content/sangramento-fora-periodo',
    ),
    ContentItem(
      title: 'Dor ou ardor ao urinar',
      description: 'Sintomas urinários e quando buscar ajuda',
      category: 'Sintomas',
      duration: '8 min',
      image: '🚽',
      route: '/content/dor-ao-urinar',
    ),
    ContentItem(
      title: 'Conheça seu ciclo menstrual',
      description: 'Entenda as fases do seu ciclo',
      category: 'Ciclo Menstrual',
      duration: '6 min',
      image: '🌸',
      route: '/content/ciclo-menstrual',
    ),
    ContentItem(
      title: 'TPM e Alterações Emocionais',
      description: 'Síndrome Pré-Menstrual e mudanças de humor',
      category: 'Ciclo Menstrual',
      duration: '8 min',
      image: '😟',
      route: '/content/tpm-alteracoes-emocionais',
    ),
    ContentItem(
      title: 'Câncer de Colo do Útero',
      description: 'Prevenção e rastreio (Papanicolau)',
      category: 'Prevenção',
      duration: '7 min',
      image: '🩺',
      route: '/content/cancer-colo-utero',
    ),
    ContentItem(
      title: 'Câncer de Mama',
      description: 'Autoexame, mamografia e detecção precoce',
      category: 'Prevenção',
      duration: '7 min',
      image: '🎀',
      route: '/content/cancer-mama',
    ),
    ContentItem(
      title: 'Violência Contra a Mulher',
      description: 'Como identificar e buscar ajuda',
      category: 'Bem-estar',
      duration: '10 min',
      image: '🛡️',
      route: '/content/violencia-contra-mulher',
    ),
    ContentItem(
      title: 'Climatério e Menopausa',
      description: 'Entenda esta fase da vida da mulher',
      category: 'Bem-estar',
      duration: '12 min',
      image: '🌡️',
      route: '/content/climaterio-menopausa',
    ),
    ContentItem(
      title: 'Autocuidado e Hábitos Saudáveis',
      description: 'Dicas práticas para o dia a dia',
      category: 'Bem-estar',
      duration: '5 min',
      image: '🧘‍♀️',
      route: '/content/autocuidado-habitos-saudaveis',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredArticles = _articles
        .where((article) =>
            article.category == _categories[_selectedCategory] ||
            _selectedCategory == 0)
        .toList();

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
                    'Educação & Bem-estar',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  IconButton(
                    onPressed: () => context.go('/home'),
                    icon: const Icon(Icons.close),
                    color: AppColors.textDark,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Search bar (ainda visual - funcionalidade pode ser adicionada depois)
              TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar artigos...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.mediumGray,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.accent,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Categories
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final isSelected = _selectedCategory == index;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedCategory = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.accent
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.accent
                                  : AppColors.mediumGray,
                              width: 1,
                            ),
                            boxShadow: isSelected
                                ? [
                                    BoxShadow(
                                      color: AppColors.accent.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                : [],
                          ),
                          child: Center(
                            child: Text(
                              _categories[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: isSelected
                                        ? AppColors.white
                                        : AppColors.textMedium,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Articles list
              Text(
                '${filteredArticles.length} artigos',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textLight,
                    ),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredArticles.length,
                itemBuilder: (context, index) {
                  final article = filteredArticles[index];
                  return _buildArticleCard(context, article);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, ContentItem article) {
    return CustomCard(
      onTap: () => context.go(article.route), // ← Agora funcional!
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.secondary1.withOpacity(0.4),
                      AppColors.secondary3.withOpacity(0.4),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    article.image,
                    style: const TextStyle(fontSize: 36),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.w600,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.secondary1,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            article.category,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: AppColors.secondary2,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.schedule,
                          size: 14,
                          color: AppColors.textLight,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          article.duration,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                color: AppColors.textLight,
                              ),
                        ),
                      ],
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
          const SizedBox(height: 12),
          Text(
            article.description,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textMedium,
                ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class ContentItem {
  final String title;
  final String description;
  final String category;
  final String duration;
  final String image;
  final String route;

  ContentItem({
    required this.title,
    required this.description,
    required this.category,
    required this.duration,
    required this.image,
    required this.route,
  });
}