# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Chat
      #
      # Deletes a message.
      #
      # @option options [Object] :channel
      #   Channel containing the message to be deleted.
      # @option options [Object] :ts
      #   Timestamp of the message to be deleted.
      # @option options [Object] :as_user
      #   Pass true to delete the message as the authed user with chat:write:user scope. Bot users in this context are considered authed users. If unused or false, the message will be deleted with chat:write:bot scope.
      # @see https://api.slack.com/methods/chat.delete
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.delete.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.delete.json
      def chat_delete(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        post("chat.delete", options)
      end

      #
      # Retrieve a permalink URL for a specific extant message
      #
      # @option options [Object] :channel
      #   The ID of the conversation or channel containing the message
      # @option options [Object] :message_ts
      #   A message's ts value, uniquely identifying it within a channel
      # @see https://api.slack.com/methods/chat.getPermalink
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.getPermalink.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.getPermalink.json
      def chat_getPermalink(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :message_ts missing") if options[:message_ts].nil?
        post("chat.getPermalink", options)
      end

      #
      # Share a me message into a channel.
      #
      # @option options [Object] :channel
      #   Channel to send message to. Can be a public channel, private group or IM channel. Can be an encoded ID, or a name.
      # @option options [Object] :text
      #   Text of the message to send.
      # @see https://api.slack.com/methods/chat.meMessage
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.meMessage.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.meMessage.json
      def chat_meMessage(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :text missing") if options[:text].nil?
        post("chat.meMessage", options)
      end

      #
      # Sends an ephemeral message to a user in a channel.
      #
      # @option options [Object] :channel
      #   Channel, private group, or IM channel to send message to. Can be an encoded ID, or a name.
      # @option options [Object] :text
      #   Text of the message to send. See below for an explanation of formatting. This field is usually required, unless you're providing only attachments instead.
      # @option options [Object] :user
      #   id of the user who will receive the ephemeral message. The user should be in the channel specified by the channel argument.
      # @option options [Object] :as_user
      #   Pass true to post the message as the authed user. Defaults to true if the chat:write:bot scope is not included. Otherwise, defaults to false.
      # @option options [Object] :attachments
      #   A JSON-based array of structured attachments, presented as a URL-encoded string.
      # @option options [Object] :blocks
      #   A JSON-based array of structured blocks, presented as a URL-encoded string.
      # @option options [Object] :link_names
      #   Find and link channel names and usernames.
      # @option options [Object] :parse
      #   Change how messages are treated. Defaults to none. See below.
      # @option options [Object] :thread_ts
      #   Provide another message's ts value to make this message a reply. Avoid using a reply's ts value; use its parent instead.
      # @see https://api.slack.com/methods/chat.postEphemeral
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.postEphemeral.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.postEphemeral.json
      def chat_postEphemeral(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :text missing") if options[:text].nil?
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        options[:attachments] = options[:attachments].to_json if options[:attachments].is_a?(Array) || options[:attachments].is_a?(Hash)
        post("chat.postEphemeral", options)
      end

      #
      # Sends a message to a channel.
      #
      # @option options [Object] :channel
      #   Channel, private group, or IM channel to send message to. Can be an encoded ID, or a name. See below for more details.
      # @option options [Object] :text
      #   Text of the message to send. See below for an explanation of formatting. This field is usually required, unless you're providing only attachments instead. Provide no more than 40,000 characters or risk truncation.
      # @option options [Object] :as_user
      #   Pass true to post the message as the authed user, instead of as a bot. Defaults to false. See authorship below.
      # @option options [Object] :attachments
      #   A JSON-based array of structured attachments, presented as a URL-encoded string.
      # @option options [Object] :blocks
      #   A JSON-based array of structured blocks, presented as a URL-encoded string.
      # @option options [Object] :icon_emoji
      #   Emoji to use as the icon for this message. Overrides icon_url. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.
      # @option options [Object] :icon_url
      #   URL to an image to use as the icon for this message. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.
      # @option options [Object] :link_names
      #   Find and link channel names and usernames.
      # @option options [Object] :mrkdwn
      #   Disable Slack markup parsing by setting to false. Enabled by default.
      # @option options [Object] :parse
      #   Change how messages are treated. Defaults to none. See below.
      # @option options [Object] :reply_broadcast
      #   Used in conjunction with thread_ts and indicates whether reply should be made visible to everyone in the channel or conversation. Defaults to false.
      # @option options [Object] :thread_ts
      #   Provide another message's ts value to make this message a reply. Avoid using a reply's ts value; use its parent instead.
      # @option options [Object] :unfurl_links
      #   Pass true to enable unfurling of primarily text-based content.
      # @option options [Object] :unfurl_media
      #   Pass false to disable unfurling of media content.
      # @option options [Object] :username
      #   Set your bot's user name. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.
      # @see https://api.slack.com/methods/chat.postMessage
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.postMessage.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.postMessage.json
      def chat_postMessage(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :text or :attachments missing") if options[:text].nil? && options[:attachments].nil?
        options[:attachments] = options[:attachments].to_json if options[:attachments].is_a?(Array) || options[:attachments].is_a?(Hash)
        post("chat.postMessage", options)
      end

      #
      # Provide custom unfurl behavior for user-posted URLs
      #
      # @option options [Object] :channel
      #   Channel ID of the message
      # @option options [Object] :ts
      #   Timestamp of the message to add unfurl behavior to.
      # @option options [Object] :unfurls
      #   URL-encoded JSON map with keys set to URLs featured in the the message, pointing to their unfurl blocks or message attachments.
      # @option options [Object] :user_auth_message
      #   Provide a simply-formatted string to send as an ephemeral message to the user as invitation to authenticate further and enable full unfurling behavior
      # @option options [Object] :user_auth_required
      #   Set to true or 1 to indicate the user must install your Slack app to trigger unfurls for this domain
      # @option options [Object] :user_auth_url
      #   Send users to this custom URL where they will complete authentication in your app to fully trigger unfurling. Value should be properly URL-encoded.
      # @see https://api.slack.com/methods/chat.unfurl
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.unfurl.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.unfurl.json
      def chat_unfurl(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        throw ArgumentError.new("Required arguments :unfurls missing") if options[:unfurls].nil?
        post("chat.unfurl", options)
      end

      #
      # Updates a message.
      #
      # @option options [Object] :channel
      #   Channel containing the message to be updated.
      # @option options [Object] :text
      #   New text for the message, using the default formatting rules. It's not required when presenting attachments.
      # @option options [Object] :ts
      #   Timestamp of the message to be updated.
      # @option options [Object] :as_user
      #   Pass true to update the message as the authed user. Bot users in this context are considered authed users.
      # @option options [Object] :attachments
      #   A JSON-based array of structured attachments, presented as a URL-encoded string. This field is required when not presenting text.
      # @option options [Object] :blocks
      #   A JSON-based array of structured blocks, presented as a URL-encoded string.
      # @option options [Object] :link_names
      #   Find and link channel names and usernames. Defaults to none. See below.
      # @option options [Object] :parse
      #   Change how messages are treated. Defaults to client, unlike chat.postMessage. See below.
      # @see https://api.slack.com/methods/chat.update
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.update.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/chat.update.json
      def chat_update(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :text missing") if options[:text].nil?
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        options[:attachments] = options[:attachments].to_json if options[:attachments].is_a?(Array) || options[:attachments].is_a?(Hash)
        post("chat.update", options)
      end

    end
  end
end
