var gulp = require('gulp'),
    del  = require('del'),
    sass = require('gulp-sass'),
    haml = require('gulp-haml');

gulp.task('haml', function () {
  gulp.src('app/**/*.haml')
    .pipe(haml({
      pretty: true
    }))
    .pipe(gulp.dest('public'));
});

gulp.task('clean', function () {
  del(['.tmp', 'public']);
});

gulp.task('sass', function () {
  var postcss      = require('gulp-postcss'),
      autoprefixer = require('autoprefixer-core');

  gulp
    .src('app/styles/main.scss')
    .pipe(sass())
    .pipe(postcss([ autoprefixer({ browsers: ['last 2 version'] }) ]))
    .pipe(gulp.dest('public/css'));
});
