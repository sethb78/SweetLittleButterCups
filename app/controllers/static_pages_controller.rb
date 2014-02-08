class StaticPagesController < ApplicationController
  def home
    @message = Message.new
  end

  def faq
  end

  def contact
  end

  def about
  end
  def baked_goods
  end
end
