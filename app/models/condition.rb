class Condition < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '新品・未使用、未使用に近い' },
    { id: 2, name: '目立った傷や汚れなし' },
    { id: 3, name: 'やや傷や汚れあり' },
    { id: 4, name: '傷や汚れあり' },
    { id: 5, name: '本・音楽・ゲーム' },
    { id: 6, name: '全体的に状態が悪い' }
  ]

  include ActiveHash::Associations
  has_many :items
end
