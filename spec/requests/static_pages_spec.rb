require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    # it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home Page" do
    before { visit root_path }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title( '| Home') }
  end

    describe "Baked Goods Page" do
    before { visit baked_goods_path }
    let(:page_title) { 'Baked Goods' }

    it_should_behave_like "all static pages"
  end

  describe "About Page" do
    before { visit about_path }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact Page" do 
    before { visit contact_path }
    let(:page_title) { 'Contact Us' }

    it_should_behave_like "all static pages" 
  end

  describe "FAQ Page" do
    before { visit faq_path }
    let(:page_title) { 'FAQ' }

    it_should_behave_like "all static pages"
  end
end
