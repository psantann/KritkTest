class ProductReviewsController < ApplicationController
  def index
    @product_reviews = ProductReview.all
  end
  
  def show
    @product_review = ProductReview.find(params[:id])
  end
  
  def new
    @product_review = ProductReview.new
  end
  
  def create
    @product_review = ProductReview.new(params[:product_review])
    if @product_review.save
      flash[:notice] = "Successfully created product review."
      redirect_to @product_review
    else
      render :action => 'new'
    end
  end
  
  def edit
    @product_review = ProductReview.find(params[:id])
  end
  
  def update
    @product_review = ProductReview.find(params[:id])
    if @product_review.update_attributes(params[:product_review])
      flash[:notice] = "Successfully updated product review."
      redirect_to @product_review
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @product_review = ProductReview.find(params[:id])
    @product_review.destroy
    flash[:notice] = "Successfully destroyed product review."
    redirect_to product_reviews_url
  end
end
