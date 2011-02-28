module SimpleForm
  module Components
    module Commits
      def commit
        template.content_tag(commit_tag, commit_text, commit_html_options) unless commit_text.blank?
      end

      def commit_tag
        options[:commit_tag] || SimpleForm.commit_tag
      end

      def commit_text
        @commit_text ||= translate(:commits, attribute_name.to_s.humanize)
      end

      def commit_html_options
        html_options_for(:commit, [SimpleForm.commit_class])
      end
    end
  end
end