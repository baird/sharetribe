class ReprocessListingImages < ActiveRecord::Migration
  say "This migration will reprocess all the images from #{Listing.count} listings"

  def up
    require "#{Rails.root}/app/jobs/reprocess_listing_image_job"

    ListingImage.order("id DESC").each do |listing_image|
      if listing_image.image_ready?
        Delayed::Job.enqueue(ReprocessListingImageJob.new(listing_image.id, :big), priority: 10)
      end
    end
  end
end


