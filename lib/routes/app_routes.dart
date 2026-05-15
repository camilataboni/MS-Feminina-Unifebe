import 'package:go_router/go_router.dart';
import 'package:minha_saude_feminina/screens/splash_screen.dart';
import 'package:minha_saude_feminina/screens/login_screen.dart';
import 'package:minha_saude_feminina/screens/register_screen.dart';
import 'package:minha_saude_feminina/screens/home_screen.dart';
import 'package:minha_saude_feminina/screens/profile_screen.dart';
import 'package:minha_saude_feminina/screens/educational_content_screen.dart';

import 'package:minha_saude_feminina/screens/content/atraso_menstrual_screen.dart';
import 'package:minha_saude_feminina/screens/content/ciclo_menstrual_screen.dart';
import 'package:minha_saude_feminina/screens/content/colica_screen.dart';
import 'package:minha_saude_feminina/screens/content/corrimento_vaginal_screen.dart';
import 'package:minha_saude_feminina/screens/content/dor_ardor_urinario_screen.dart';
import 'package:minha_saude_feminina/screens/content/autocuidado_habitos_saudaveis_screen.dart';
import 'package:minha_saude_feminina/screens/content/cancer_colo_utero_screen.dart';
import 'package:minha_saude_feminina/screens/content/cancer_mama_screen.dart';
import 'package:minha_saude_feminina/screens/content/violencia_contra_mulher_screen.dart';
import 'package:minha_saude_feminina/screens/content/climaterio_menopausa_screen.dart';
import 'package:minha_saude_feminina/screens/content/tpm_alteracoes_emocionais_screen.dart';
import 'package:minha_saude_feminina/screens/content/sangramento_fora_periodo_screen.dart';


// TODO: Importar as novas telas de conteúdo quando criar os arquivos
// import 'package:minha_saude_feminina/screens/content/corrimento_vaginal_screen.dart';
// import 'package:minha_saude_feminina/screens/content/colica_screen.dart';
// ... (importar todas)

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/educational-content',
      builder: (context, state) => const EducationalContentScreen(),
    ),

    GoRoute(
      path: '/content/corrimento-vaginal',
      builder: (context, state) => const CorrimentoVaginalScreen(), 
    ),
    GoRoute(
      path: '/content/colica',
      builder: (context, state) => const ColicaScreen(), 
    ),
    GoRoute(
      path: '/content/atraso-menstrual',
      builder: (context, state) => const AtrasoMenstrualScreen(), 
    ),
    GoRoute(
      path: '/content/sangramento-fora-periodo',
      builder: (context, state) => const SangramentoForaPeriodoScreen(), 
    ),
    GoRoute(
      path: '/content/dor-ao-urinar',
      builder: (context, state) => const DorArdorUrinarioScreen(), 
    ),
    GoRoute(
      path: '/content/ciclo-menstrual',
      builder: (context, state) => const CicloMenstrualScreen(), 
    ),
    GoRoute(
      path: '/content/tpm-alteracoes-emocionais',
      builder: (context, state) => const TpmAlteracoesEmocionaisScreen(),
    ),
    GoRoute(
      path: '/content/cancer-colo-utero',
      builder: (context, state) => const CancerColoUteroScreen(), 
    ),
    GoRoute(
      path: '/content/cancer-mama',
      builder: (context, state) => const CancerMamaScreen(),
    ),
    GoRoute(
      path: '/content/violencia-contra-mulher',
      builder: (context, state) => const ViolenciaContraMulherScreen(),
    ),
    GoRoute(
      path: '/content/climaterio-menopausa',
      builder: (context, state) => const ClimaterioMenopausaScreen(), 
    ),
    GoRoute(
      path: '/content/autocuidado-habitos-saudaveis',
      builder: (context, state) => const AutocuidadoHabitosSaudaveisScreen(), 
    ),
  ],
);