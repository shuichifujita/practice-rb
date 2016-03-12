class User < ActiveRecord::Base
  # 入力されたメールアドレスをDBに保存前にスモールケースに変換
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  # メールのフォーマットを検証するためのパターン
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  # ここで検証
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # 与えられた文字列のハッシュ値を返す
  def User.digest(string)
    # ここダメ
    # cost = ActiveModel::SecurPassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    # BCrypt::Password.create(string, cost: cost)
    BCrypt::Password.create(string, cost: 6)
  end
end