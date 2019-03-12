# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Groups
      #
      # Archives a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to archive
      # @see https://api.slack.com/methods/groups.archive
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.archive.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.archive.json
      def groups_archive(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.archive", options)
      end

      #
      # This method closes a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to close.
      # @see https://api.slack.com/methods/groups.close
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.close.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.close.json
      def groups_close(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.close", options)
      end

      #
      # Creates a private channel.
      #
      # @option options [Object] :name
      #   Name of private channel to create
      # @option options [Object] :validate
      #   Whether to return errors on invalid channel name instead of modifying it to meet the specified criteria.
      # @see https://api.slack.com/methods/groups.create
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.create.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.create.json
      def groups_create(options={})
        throw ArgumentError.new("Required arguments :name missing") if options[:name].nil?
        post("groups.create", options)
      end

      #
      # Clones and archives a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to clone and archive.
      # @see https://api.slack.com/methods/groups.createChild
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.createChild.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.createChild.json
      def groups_createChild(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.createChild", options)
      end

      #
      # Fetches history of messages and events from a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to fetch history for.
      # @option options [Object] :count
      #   Number of messages to return, between 1 and 1000.
      # @option options [Object] :inclusive
      #   Include messages with latest or oldest timestamp in results.
      # @option options [Object] :latest
      #   End of time range of messages to include in results.
      # @option options [Object] :oldest
      #   Start of time range of messages to include in results.
      # @option options [Object] :unreads
      #   Include unread_count_display in the output?
      # @see https://api.slack.com/methods/groups.history
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.history.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.history.json
      def groups_history(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.history", options)
      end

      #
      # Gets information about a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to get info on
      # @option options [Object] :include_locale
      #   Set this to true to receive the locale for this group. Defaults to false
      # @see https://api.slack.com/methods/groups.info
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.info.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.info.json
      def groups_info(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.info", options)
      end

      #
      # Invites a user to a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to invite user to.
      # @option options [Object] :user
      #   User to invite.
      # @see https://api.slack.com/methods/groups.invite
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.invite.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.invite.json
      def groups_invite(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        post("groups.invite", options)
      end

      #
      # Removes a user from a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to remove user from.
      # @option options [Object] :user
      #   User to remove from private channel.
      # @see https://api.slack.com/methods/groups.kick
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.kick.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.kick.json
      def groups_kick(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        post("groups.kick", options)
      end

      #
      # Leaves a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to leave
      # @see https://api.slack.com/methods/groups.leave
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.leave.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.leave.json
      def groups_leave(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.leave", options)
      end

      #
      # Lists private channels that the calling user has access to.
      #
      # @option options [Object] :cursor
      #   Parameter for pagination. Set cursor equal to the next_cursor attribute returned by the previous request's response_metadata. This parameter is optional, but pagination is mandatory: the default value simply fetches the first "page" of the collection. See pagination for more details.
      # @option options [Object] :exclude_archived
      #   Don't return archived private channels.
      # @option options [Object] :exclude_members
      #   Exclude the members from each group
      # @option options [Object] :limit
      #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached.
      # @see https://api.slack.com/methods/groups.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.list.json
      def groups_list(options={})
        post("groups.list", options)
      end

      #
      # Sets the read cursor in a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to set reading cursor in.
      # @option options [Object] :ts
      #   Timestamp of the most recently seen message.
      # @see https://api.slack.com/methods/groups.mark
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.mark.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.mark.json
      def groups_mark(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        post("groups.mark", options)
      end

      #
      # Opens a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to open.
      # @see https://api.slack.com/methods/groups.open
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.open.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.open.json
      def groups_open(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.open", options)
      end

      #
      # Renames a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to rename
      # @option options [Object] :name
      #   New name for private channel.
      # @option options [Object] :validate
      #   Whether to return errors on invalid channel name instead of modifying it to meet the specified criteria.
      # @see https://api.slack.com/methods/groups.rename
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.rename.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.rename.json
      def groups_rename(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :name missing") if options[:name].nil?
        post("groups.rename", options)
      end

      #
      # Retrieve a thread of messages posted to a private channel
      #
      # @option options [Object] :channel
      #   Private channel to fetch thread from
      # @option options [Object] :thread_ts
      #   Unique identifier of a thread's parent message
      # @see https://api.slack.com/methods/groups.replies
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.replies.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.replies.json
      def groups_replies(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :thread_ts missing") if options[:thread_ts].nil?
        post("groups.replies", options)
      end

      #
      # Sets the purpose for a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to set the purpose of
      # @option options [Object] :purpose
      #   The new purpose
      # @see https://api.slack.com/methods/groups.setPurpose
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setPurpose.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setPurpose.json
      def groups_setPurpose(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :purpose missing") if options[:purpose].nil?
        post("groups.setPurpose", options)
      end

      #
      # Sets the topic for a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to set the topic of
      # @option options [Object] :topic
      #   The new topic
      # @see https://api.slack.com/methods/groups.setTopic
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setTopic.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setTopic.json
      def groups_setTopic(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :topic missing") if options[:topic].nil?
        post("groups.setTopic", options)
      end

      #
      # Unarchives a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to unarchive
      # @see https://api.slack.com/methods/groups.unarchive
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.unarchive.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.unarchive.json
      def groups_unarchive(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("groups.unarchive", options)
      end

    end
  end
end
