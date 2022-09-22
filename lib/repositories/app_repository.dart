import 'package:programming_language_test/models/models.dart';

class AppRepository {
  List<Question> questionList = [
    Question(
      id: 1,
      text: 'Почему ты хочешь учиться программировать',
      anserListId: [1, 2, 3, 4],
    ),
    Question(
      id: 2,
      text: 'Что будем взламывать',
      anserListId: [5, 6, 7],
    ),
    Question(
      id: 3,
      text: 'Язык на все случае жизни или что-то особенное',
      anserListId: [8, 9],
    ),
    Question(
      id: 4,
      text: 'Кодинг с высоты птичьего полета или на уровне железа',
      anserListId: [10, 13],
    ),
    Question(
      id: 5,
      text: 'Ты уверен? Терпения хватит',
      anserListId: [11, 12],
    ),
    Question(
      id: 6,
      text: 'Объекты или функции',
      anserListId: [14, 15],
    ),
    Question(
      id: 7,
      text: 'Работа в компании, фриланс или свой стартап',
      anserListId: [16, 17, 18],
    ),
    Question(
      id: 8,
      text: 'Веб, обычный софт или игры',
      anserListId: [19, 21, 22],
    ),
    Question(
      id: 9,
      text: 'Нужно попроще',
      anserListId: [20, 23, 24],
    ),
    Question(
      id: 10,
      text: 'Клиент или сервер',
      anserListId: [28, 29],
    ),
    Question(
      id: 11,
      text: 'Контент или интерактив',
      anserListId: [30, 33],
    ),
    Question(
      id: 12,
      text: 'Проверенный инструмент или модная технология',
      anserListId: [31, 32],
    ),
    Question(
      id: 13,
      text: 'Типовые проекты или что-то другое',
      anserListId: [45, 46],
    ),
    Question(
      id: 14,
      text: 'Для какой платформы',
      anserListId: [48, 49, 50],
    ),
    Question(
      id: 15,
      text: 'Работа в банке - это...',
      anserListId: [35, 36, 37],
    ),
    Question(
      id: 16,
      text: 'Хочешь делать приложения для телефонов',
      anserListId: [38, 41],
    ),
    Question(
      id: 17,
      text: 'Любишь технологии Microsoft',
      anserListId: [39, 40],
    ),
    Question(
      id: 18,
      text: 'Насколько глубоко готов погрузиться',
      anserListId: [42, 43, 44],
    ),
    Question(
      id: 19,
      text: 'Твоя система',
      anserListId: [25, 26, 27],
    ),
  ];

  List<Answer> answerList = [
    Answer(
      id: 1,
      text: 'Мне нужно в хакерских целях',
      isNextStepResult: false,
      nextStepId: 2,
    ),
    Answer(
      id: 2,
      text: 'Для саморазвития',
      isNextStepResult: false,
      nextStepId: 3,
    ),
    Answer(
      id: 3,
      text: 'Буду зарабатывать деньги',
      isNextStepResult: false,
      nextStepId: 7,
    ),
    Answer(
      id: 4,
      text: 'Для автоматизации работы',
      isNextStepResult: false,
      nextStepId: 19,
    ),
    Answer(
      id: 5,
      text: 'Веб-приложения',
      isNextStepResult: true,
      nextStepId: 1,
    ),
    Answer(
      id: 6,
      text: 'Бинарники',
      isNextStepResult: true,
      nextStepId: 3,
    ),
    Answer(
      id: 7,
      text: 'Инфраструктуру компаний',
      isNextStepResult: true,
      nextStepId: 2,
    ),
    Answer(
      id: 8,
      text: 'Универсальный',
      isNextStepResult: true,
      nextStepId: 4,
    ),
    Answer(
      id: 9,
      text: 'Что-нибудь эдакое',
      isNextStepResult: false,
      nextStepId: 4,
    ),
    Answer(
      id: 10,
      text: 'Железо!',
      isNextStepResult: false,
      nextStepId: 5,
    ),
    Answer(
      id: 11,
      text: 'Я сказал "железо", а не "жесть',
      isNextStepResult: true,
      nextStepId: 5,
    ),
    Answer(
      id: 12,
      text: 'Конечно!',
      isNextStepResult: true,
      nextStepId: 6,
    ),
    Answer(
      id: 13,
      text: 'Как можно академичнее',
      isNextStepResult: false,
      nextStepId: 6,
    ),
    Answer(
      id: 14,
      text: 'Объекты',
      isNextStepResult: true,
      nextStepId: 7,
    ),
    Answer(
      id: 15,
      text: 'Функции',
      isNextStepResult: true,
      nextStepId: 8,
    ),
    Answer(
      id: 16,
      text: 'Работа на дядю',
      isNextStepResult: false,
      nextStepId: 8,
    ),
    Answer(
      id: 17,
      text: 'Фриланс',
      isNextStepResult: false,
      nextStepId: 13,
    ),
    Answer(
      id: 18,
      text: 'Стартап',
      isNextStepResult: false,
      nextStepId: 10,
    ),
    Answer(
      id: 19,
      text: 'Попробую веб',
      isNextStepResult: false,
      nextStepId: 9,
    ),
    Answer(
      id: 20,
      text: 'Пожалуй',
      isNextStepResult: false,
      nextStepId: 13,
    ),
    Answer(
      id: 21,
      text: 'Обычные программы',
      isNextStepResult: false,
      nextStepId: 15,
    ),
    Answer(
      id: 22,
      text: 'Буду игры делать!',
      isNextStepResult: false,
      nextStepId: 18,
    ),
    Answer(
      id: 23,
      text: 'Самое базовое',
      isNextStepResult: true,
      nextStepId: 28,
    ),
    Answer(
      id: 24,
      text: 'Не обязательно',
      isNextStepResult: false,
      nextStepId: 10,
    ),
    Answer(
      id: 25,
      text: 'Linux',
      isNextStepResult: true,
      nextStepId: 26,
    ),
    Answer(
      id: 26,
      text: 'OS X',
      isNextStepResult: true,
      nextStepId: 27,
    ),
    Answer(
      id: 27,
      text: 'Windows',
      isNextStepResult: true,
      nextStepId: 25,
    ),
    Answer(
      id: 28,
      text: 'Клиент',
      isNextStepResult: true,
      nextStepId: 24,
    ),
    Answer(
      id: 29,
      text: 'Сервер',
      isNextStepResult: false,
      nextStepId: 11,
    ),
    Answer(
      id: 30,
      text: 'Интерактив',
      isNextStepResult: false,
      nextStepId: 12,
    ),
    Answer(
      id: 31,
      text: 'Конечно, что-нибудь модное',
      isNextStepResult: true,
      nextStepId: 22,
    ),
    Answer(
      id: 32,
      text: 'Лучше что-нибудь надежное',
      isNextStepResult: true,
      nextStepId: 23,
    ),
    Answer(
      id: 33,
      text: 'Контент',
      isNextStepResult: true,
      nextStepId: 21,
    ),
    Answer(
      id: 34,
      text: 'Для начала веб',
      isNextStepResult: false,
      nextStepId: 11,
    ),
    Answer(
      id: 35,
      text: 'Слишком просто',
      isNextStepResult: true,
      nextStepId: 9,
    ),
    Answer(
      id: 36,
      text: 'Отстой!',
      isNextStepResult: false,
      nextStepId: 16,
    ),
    Answer(
      id: 37,
      text: 'Круто',
      isNextStepResult: true,
      nextStepId: 10,
    ),
    Answer(
      id: 38,
      text: 'Не особенно',
      isNextStepResult: false,
      nextStepId: 17,
    ),
    Answer(
      id: 39,
      text: 'Я не против',
      isNextStepResult: true,
      nextStepId: 11,
    ),
    Answer(
      id: 40,
      text: 'Не хочу к ним привязываться',
      isNextStepResult: true,
      nextStepId: 12,
    ),
    Answer(
      id: 41,
      text: 'Почему бы и нет?',
      isNextStepResult: false,
      nextStepId: 14,
    ),
    Answer(
      id: 42,
      text: 'Поверхностно',
      isNextStepResult: true,
      nextStepId: 13,
    ),
    Answer(
      id: 43,
      text: 'Средне',
      isNextStepResult: true,
      nextStepId: 14,
    ),
    Answer(
      id: 44,
      text: 'Глубоко!',
      isNextStepResult: true,
      nextStepId: 15,
    ),
    Answer(
      id: 45,
      text: 'Я все же программировать хотел :-)',
      isNextStepResult: true,
      nextStepId: 16,
    ),
    Answer(
      id: 46,
      text: 'Типовые сойдут, дайте легких денег!',
      isNextStepResult: true,
      nextStepId: 17,
    ),
    Answer(
      id: 47,
      text: 'Это главное',
      isNextStepResult: false,
      nextStepId: 14,
    ),
    Answer(
      id: 48,
      text: 'Кроссплатформа',
      isNextStepResult: true,
      nextStepId: 18,
    ),
    Answer(
      id: 49,
      text: 'Android',
      isNextStepResult: true,
      nextStepId: 20,
    ),
    Answer(
      id: 50,
      text: 'iOS',
      isNextStepResult: true,
      nextStepId: 19,
    ),
  ];

  List<Result> resultList = [
    Result(
      id: 1,
      text: 'PHP, Python, SQL, Burp Suite',
    ),
    Result(
      id: 2,
      text:
          'Администрирование Windows, устройство сетей, сетевое программирование',
    ),
    Result(
      id: 3,
      text: 'Python, C++, IDA Pro, radare2',
    ),
    Result(
      id: 4,
      text: 'Python',
    ),
    Result(
      id: 5,
      text: 'C',
    ),
    Result(
      id: 6,
      text: 'Assembler',
    ),
    Result(
      id: 7,
      text: 'Smalltalk',
    ),
    Result(
      id: 8,
      text: 'Lisp',
    ),
    Result(
      id: 9,
      text: 'Erlang',
    ),
    Result(
      id: 10,
      text: 'Java',
    ),
    Result(
      id: 11,
      text: 'C#',
    ),
    Result(
      id: 12,
      text: 'C++',
    ),
    Result(
      id: 13,
      text: 'Lua',
    ),
    Result(
      id: 14,
      text: 'Unity',
    ),
    Result(
      id: 15,
      text: 'C++ и OpenGL или DirectX',
    ),
    Result(
      id: 16,
      text: 'PHP, Yii или Laravel',
    ),
    Result(
      id: 17,
      text: 'PHP и Wordpress',
    ),
    Result(
      id: 18,
      text: 'Flutter',
    ),
    Result(
      id: 19,
      text: 'Objective-C или Swift',
    ),
    Result(
      id: 20,
      text: 'Kotlin',
    ),
    Result(
      id: 21,
      text: 'Python и Django',
    ),
    Result(
      id: 22,
      text: 'Node.js',
    ),
    Result(
      id: 23,
      text: 'Ruby on Rails',
    ),
    Result(
      id: 24,
      text: 'JavaScript, Angular, Vue или React',
    ),
    Result(
      id: 25,
      text: 'Powershell',
    ),
    Result(
      id: 26,
      text: 'Bash, Python',
    ),
    Result(
      id: 27,
      text: 'Основы Bash, AppleScript, Python',
    ),
    Result(
      id: 28,
      text: 'HTML, CSS',
    ),
  ];
}
