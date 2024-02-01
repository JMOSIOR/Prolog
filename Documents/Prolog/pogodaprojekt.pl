% Prosty system ekspercki do prognozowania pogody w Prologu

% Pytania dotycz¹ce warunków atmosferycznych
pytanie_deszcz(Odp) :-
    write('Czy pada deszcz? (tak/nie): '),
    read(Odp).

pytanie_temperatura(Temperatura) :-
    write('Jaka jest temperatura? (wpisz liczbê): '),
    read(Temperatura).

pytanie_wiatr(Odp) :-
    write('Czy wieje silny wiatr? (tak/nie): '),
    read(Odp).

pytanie_zachmurzenie(Zachmurzenie) :-
    write('Jakie jest zachmurzenie? (niskie/œrednie/wysokie): '),
    read(Zachmurzenie).

pytanie_pora_dnia(PoraDnia) :-
    write('Jaka jest pora dnia? (dzien/noc): '),
    read(PoraDnia).

% Procedura prognozuj¹ca pogodê
prognozuj_pogode :-
    pytanie_deszcz(OdpDeszcz),
    pytanie_temperatura(Temperatura),
    pytanie_wiatr(OdpWiatr),
    pytanie_zachmurzenie(Zachmurzenie),
    pytanie_pora_dnia(PoraDnia),
    (
        (OdpDeszcz == tak -> DeszczPrognoza = true; DeszczPrognoza = false),
        (Temperatura > 20 -> CieploPrognoza = true; CieploPrognoza = false),
        (OdpWiatr == tak -> WiatrPrognoza = true; WiatrPrognoza = false),
        (Zachmurzenie == niskie -> ZachmurzeniePrognoza = true; ZachmurzeniePrognoza = false),
        (PoraDnia == dzien -> PoraDniaPrognoza = true; PoraDniaPrognoza = false),
        true -> write('Prognoza trudna do okreœlenia.')
    ),
    (
        DeszczPrognoza == true -> write('Bêdzie deszczowo.'), nl; true),
    (
        CieploPrognoza == true -> write('Bêdzie ³adny dzieñ.'), nl; true),
    (
        WiatrPrognoza == true -> write('Bêdzie zimno i wietrznie.'), nl; true),
    (
        ZachmurzeniePrognoza == true -> write('Bêdzie ³adny dzieñ.'), nl; true),
    (
        PoraDniaPrognoza == true -> write('Bêdzie ³adny dzieñ.'), nl; true).
