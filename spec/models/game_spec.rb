require 'rails_helper'

RSpec.describe Game do
  let(:game) { described_class.create!(title: "testing", link: "http://game.testing")}

  it 'has a list of related links' do
    expect(game.related_links).to eq([])

    game.related_links << "http://first.link"
    game.save!

    expect(game.related_links.count).to eq(1)
    expect(game.related_links.first).to eq("http://first.link")
  end
end
