module Instructor::CoursesHelper
  def course_image(course)
    if course.image.url.present?
      return course.image.url
    end
    return "popcorn.png"
  end
end
