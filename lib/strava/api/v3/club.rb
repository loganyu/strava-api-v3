require 'strava/api/v3/common'

module Strava::Api::V3
  module Club
    include Common

    # Fetch information about a specific item of club
    #
    # See {http://strava.github.io/api/v3/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return club json (see http://strava.github.io/api/v3/clubs/)
    def retrieve_a_club(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}", args, 'get', options, &block)
    end

    # Fetch information about the clubs for the current user
    #
    # See {http://strava.github.io/api/v3/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return club json (see http://strava.github.io/api/v3/clubs/)
    def list_athlete_clubs(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('athlete/clubs', args, 'get', options, &block)
    end

    # Announcements are posts sent by Club Admins or Owners to the members of a club. Only members of private clubs can access their announcements. The objects are returned in summary representation.
    # 
    # See {http://strava.github.io/api/v3/clubs/#get-announcements} for full details
    # 
    # @param id required
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    # 
    # @return an array of club announcement summary representations.
    def list_club_announcements(id, args = {}, option = {}, &block)
        api_call("clubs/#{id}/announcements", args, 'get', option, &block)
    end

    # Fetch information about the members of a specific club
    #
    # See {http://strava.github.io/api/v3/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return club json (see http://strava.github.io/api/v3/clubs/)
    def list_club_members(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}/members", args, 'get', options, &block)
    end

    # Fetch information about the admins of a specific club
    #
    # See {http://strava.github.io/api/v3/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return club json (see http://strava.github.io/api/v3/clubs/)
    def list_club_admins(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}/admins", args, 'get', options, &block)
    end

    # Fetch information about the activities of a specific club
    #
    # See {http://strava.github.io/api/v3/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return club json (see http://strava.github.io/api/v3/clubs/)
    def list_club_activities(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}/activities", args, 'get', options, &block)
    end
  end
end
