require 'google/cloud/pubsub'
require 'base64'
require 'json'
require 'yaml'

CREDENTIALS = YAML.load_file 'config.yml'
DEFAULT_CREDENTIALS = CREDENTIALS[ENV['GROUP'] || 'default']

PUBSUB = Google::Cloud::Pubsub.new(
  project_id: DEFAULT_CREDENTIALS['project_id'],
  credentials: DEFAULT_CREDENTIALS['credentials']
)

TOPIC = DEFAULT_CREDENTIALS['topic']
