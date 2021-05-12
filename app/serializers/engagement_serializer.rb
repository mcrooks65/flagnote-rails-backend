class EngagementSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :status, :targets
end
