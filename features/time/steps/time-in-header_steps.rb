Given /^я оказываюсь на странице "cоздание игры"$/ do
  Given %{я логинюсь как Petya}
  And %{я захожу по адресу /games/new}
end

Given /^я оказываюсь на странице "редактирование игры"$/ do
  And %{я логинюсь как Petya}
  And %{я захожу в личный кабинет}
  And %{должен увидеть "В поисках боярышника"}
  And %{иду по ссылке "(редактировать)"}
  And %{должен увидеть "В поисках боярышника"}
end

Given /^я оказываюсь на странице "анонс игры"$/ do
  And %{я не залогинен}
  And %{иду по ссылке "Список игр"}
  And %{должен увидеть "В поисках боярышника"}
  And %{иду по ссылке "(просмотреть)"}
  And %{должен увидеть "В поисках боярышника"}
end

Given /^я оказываюсь на странице "финишный протокол игрока"$/ do
  Given %{я логинюсь как Dima}
  And %{захожу в личный кабинет}
  And %{должен увидеть "В поисках боярышника"}
  And %{иду по ссылке "Играть!"}
  And %{должен увидеть "Красные ягоды"}
  And %{я ввожу "red" в поле "Код"}
  And %{и нажимаю "Отправить!"}
  And %{должен увидеть "Поздравляем"}
end

Given /^я оказываюсь на странице "статистика автора"$/ do
  Given %{я логинюсь как Dima}
  And %{захожу в личный кабинет}
  And %{должен увидеть "В поисках боярышника"}
  And %{иду по ссылке "Играть!"}
  And %{должен увидеть "Красные ягоды"}
  And %{я ввожу "red" в поле "Код"}
  And %{и нажимаю "Отправить!"}
  And %{должен увидеть "Поздравляем"}
  Given %{я логинюсь как Petya}
  And %{захожу в личный кабинет}
  And %{должен увидеть "В поисках боярышника"}
  And %{иду по ссылке "(статистика)"}
  And %{должен увидеть "В поисках боярышника"}
end






