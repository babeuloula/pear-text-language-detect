<?php

require_once 'vendor/autoload.php';

$texts = [
    'Du hast mich gefragt und ich hab\' nichts gesagt',
    'De vices de forme en lames de fond la folie des hommes chante à l\'unisson',
    'So close, no matter how far, couldn\'t be much more from the heart, forever trusting who we are, and nothing else matters',
    'Вы как утренний кофе.',
];

foreach ($texts as $text) {
    echo PHP_EOL . '------------------------------------' . PHP_EOL;
    echo "Text: $text" . PHP_EOL;

    $ld = new Text_LanguageDetect();
    $results = $ld->detect($text, 3);

    foreach ($results as $language => $confidence) {
        echo $language . ': ' . number_format($confidence, 2) . PHP_EOL;
    }
}



