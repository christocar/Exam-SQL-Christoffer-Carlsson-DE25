## Sakila Film & Rental Analysis
##### This dashboard explores key insights from the Sakila DVD rental database using DuckDB and Evidence.

#### Movies Longer than 180 Minutes
```sql long_movies
from sakila.number_of_180m_movies;

```

#### Movies with the word "Love" in the Title
```sql love_movies
from sakila.number_of_movies_with_love_in_title;

```

#### Movies with the chosen keyword in the Title
<Dropdown name=keyword>
  <DropdownOption value="love"/>
  <DropdownOption value="war"/>
  <DropdownOption value="king"/>
</Dropdown>

```sql keyword_movies
from sakila.number_of_movies_with_${inputs.keyword.value}_in_title;

```

#### Statistics on movie lengths in minutes
```sql movie_length_stats
from sakila.statistics_on_movie_length;

```

#### Most expensive movies to rent
```sql most_expensive_movies
from sakila.most_expensive_movies_to_rent;

```

#### Top 10 Actors by number of movies
```sql top_actors_by_movies
from sakila.top_actors_by_number_of_movies;

```

#### Top 10 Actors by Number of Rentals
```sql top_actors
from sakila.number_of_rentals;
limit 10

```

#### Graphical Representation of the Top 10 Actors by Number of Rentals
<BarChart
  data={top_actors}
  title="Top 10 Actors by Number of Rentals"
  x=actor_name
  y=number_of_rentals
  orientation=vertical
/>

#### Top 5 Actors by Number of Action Movies

```sql top_action_actors
from sakila.number_of_action_movies;
limit 5

```

#### Graphical Representation of the Top 5 Actors by Number of Action Movies
<BarChart
    data={top_action_actors}
    title="Top 5 Actors by Number of Action Movies"
    x=actor_name
    y=number_of_action_movies
/>

