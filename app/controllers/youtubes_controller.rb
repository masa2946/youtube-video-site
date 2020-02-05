class YoutubesController < ApplicationController
  GOOGLE_API_KEY = ENV["API_KEY"]

  def find_videos(keyword, after: 1.months.ago, before: Time.now)
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key = GOOGLE_API_KEY

    next_page_token = nil
    opt = {
      q: keyword,
      type: 'video',
      max_results: 3,
      page_token: next_page_token,
      published_after: after.iso8601,
      published_before: before.iso8601
    }
    service.list_searches(:snippet, opt)
  end

  def index
    @youtube_data = find_videos('TBS NEWS')
  end

  def new
    @youtube_data = find_videos('マコなり社長')
  end

  def show
    @youtube_data = find_videos('ANNnewsCH')
  end
end
