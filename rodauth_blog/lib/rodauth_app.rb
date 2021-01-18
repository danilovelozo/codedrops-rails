class RodauthApp < Rodauth::Rails::App
  route do |r|
    rodauth.require_authentication if r.path.start_with?('/posts')
  end

  configure do
    before_create_account do
      # Validate presence of the name field
      throw_error_status(422, 'name', 'must be present') unless param_or_nil('name')
    end

    after_create_account do
      # Create the associated profile record with name
      Profile.create!(account_id: account_id, name: param('name'))
    end

    after_close_account do
      # Delete the associated profile record
      Profile.find_by!(account_id: account_id).destroy
    end

    send_reset_password_email do
      mailer_send(:reset_password, email_to, reset_password_email_link)
    end

    send_verify_account_email do
      mailer_send(:verify_account, email_to, verify_account_email_link)
    end

    send_verify_login_change_email do |login|
      mailer_send(:verify_login_change, login, verify_login_change_old_login, verify_login_change_new_login, verify_login_change_email_link)
    end

    send_password_changed_email do
      mailer_send(:password_changed, email_to)
    end

    auth_class_eval do
      def mailer_send(type, *args)
        db.after_commit do
          RodauthMailer.public_send(type, *args).deliver_later
        end
      end
    end
  end
end
