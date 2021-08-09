<?php

namespace Database\Factories;

use App\Models\Question;
use Illuminate\Database\Eloquent\Factories\Factory;

class QuestionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Question::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'quiz_id' => rand(1,10),
            'question' => $this->faker->sentence(rand(3,7)),
            'answer1' =>$this->faker->sentence(rand(2,4)),
            'answer2' =>$this->faker->sentence(rand(2,4)),
            'answer3' =>$this->faker->sentence(rand(2,4)),
            'answer4' =>$this->faker->sentence(rand(2,4)),
            'correct_answer' => 'answer'.rand(1,4),
        ];
    }
}
