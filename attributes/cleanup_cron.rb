# Default image tag to clean up
default['docker']['cleanup_cron']['images']['tag'] = 'none'

# Default image cleanup_cron 2 AM, weekly on Sunday
default['docker']['cleanup_cron']['images']['minute'] = 0
default['docker']['cleanup_cron']['images']['hour'] = 2
default['docker']['cleanup_cron']['images']['day'] = '*'
default['docker']['cleanup_cron']['images']['month'] = '*'
default['docker']['cleanup_cron']['images']['weekday'] = 0

# Default container cleanup_cron 1 AM, weekly on Sunday
default['docker']['cleanup_cron']['containers']['minute'] = 0
default['docker']['cleanup_cron']['containers']['hour'] = 1
default['docker']['cleanup_cron']['containers']['day'] = '*'
default['docker']['cleanup_cron']['containers']['month'] = '*'
default['docker']['cleanup_cron']['containers']['weekday'] = 0
