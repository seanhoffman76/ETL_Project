select m.title, m.year_released, m.imdb_score, t.rating, t.tomatometer_rating, t.audience_rating, a.award, a.year_of_award, a.movie, a.person
from public.best_actor a
left join public.imdb m on (a.movie = m.title)
left join public.rotten_tomatoes t on(m.title = t.title)
