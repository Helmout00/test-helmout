require "rails_helper"

RSpec.describe NotificationsMailer, type: :mailer do
  describe "signup" do
    let(:mail) { NotificationsMailer.signup }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "forgot_password" do
    let(:mail) { NotificationsMailer.forgot_password }

    it "renders the headers" do
      expect(mail.subject).to eq("Forgot password")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "invoice" do
    let(:mail) { NotificationsMailer.invoice }

    it "renders the headers" do
      expect(mail.subject).to eq("Invoice")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
