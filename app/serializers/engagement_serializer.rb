class EngagementSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :status, :id, :targets
end
