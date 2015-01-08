require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { address: @place.address, air_bag: @place.air_bag, ave_snow_fall: @place.ave_snow_fall, barrels: @place.barrels, base_elevation: @place.base_elevation, base_snow: @place.base_snow, box: @place.box, categories: @place.categories, cell: @place.cell, channel_gap: @place.channel_gap, close_hr: @place.close_hr, close_lift_time: @place.close_lift_time, close_lifts: @place.close_lifts, day_ticket_adult: @place.day_ticket_adult, day_ticket_adult_hr: @place.day_ticket_adult_hr, day_ticket_child: @place.day_ticket_child, day_ticket_child_hr: @place.day_ticket_child_hr, day_ticket_teen: @place.day_ticket_teen, day_ticket_teen_hr: @place.day_ticket_teen_hr, discription: @place.discription, gap: @place.gap, half_pipe: @place.half_pipe, hip: @place.hip, holiday: @place.holiday, latitude: @place.latitude, lifts: @place.lifts, longest_run: @place.longest_run, longtitude: @place.longtitude, mail_box: @place.mail_box, maintainance: @place.maintainance, mini_kicker: @place.mini_kicker, night_ticket_adult: @place.night_ticket_adult, night_ticket_adult_hr: @place.night_ticket_adult_hr, night_ticket_child: @place.night_ticket_child, night_ticket_child_hr: @place.night_ticket_child_hr, night_ticket_teen: @place.night_ticket_teen, night_ticket_teen_hr: @place.night_ticket_teen_hr, note: @place.note, open_hr: @place.open_hr, open_lift_time: @place.open_lift_time, open_lifts: @place.open_lifts, park_bench_picnic_table: @place.park_bench_picnic_table, place_id: @place.place_id, quater_pipe: @place.quater_pipe, rail: @place.rail, rainbow: @place.rainbow, rate: @place.rate, rental_gear: @place.rental_gear, repaire: @place.repaire, rideable_acres: @place.rideable_acres, sell: @place.sell, snowmaking: @place.snowmaking, spine: @place.spine, step_down: @place.step_down, step_up: @place.step_up, strome_total: @place.strome_total, super_kicker: @place.super_kicker, table_top: @place.table_top, tabletop: @place.tabletop, terrain_advance: @place.terrain_advance, terrain_beginner: @place.terrain_beginner, terrain_expert: @place.terrain_expert, terrain_intermid: @place.terrain_intermid, terrain_park: @place.terrain_park, terrain_park_lv: @place.terrain_park_lv, title: @place.title, top_elevation: @place.top_elevation, trail_map: @place.trail_map, trails: @place.trails, trees: @place.trees, url: @place.url, wall_ride: @place.wall_ride, wifi: @place.wifi }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    put :update, id: @place, place: { address: @place.address, air_bag: @place.air_bag, ave_snow_fall: @place.ave_snow_fall, barrels: @place.barrels, base_elevation: @place.base_elevation, base_snow: @place.base_snow, box: @place.box, categories: @place.categories, cell: @place.cell, channel_gap: @place.channel_gap, close_hr: @place.close_hr, close_lift_time: @place.close_lift_time, close_lifts: @place.close_lifts, day_ticket_adult: @place.day_ticket_adult, day_ticket_adult_hr: @place.day_ticket_adult_hr, day_ticket_child: @place.day_ticket_child, day_ticket_child_hr: @place.day_ticket_child_hr, day_ticket_teen: @place.day_ticket_teen, day_ticket_teen_hr: @place.day_ticket_teen_hr, discription: @place.discription, gap: @place.gap, half_pipe: @place.half_pipe, hip: @place.hip, holiday: @place.holiday, latitude: @place.latitude, lifts: @place.lifts, longest_run: @place.longest_run, longtitude: @place.longtitude, mail_box: @place.mail_box, maintainance: @place.maintainance, mini_kicker: @place.mini_kicker, night_ticket_adult: @place.night_ticket_adult, night_ticket_adult_hr: @place.night_ticket_adult_hr, night_ticket_child: @place.night_ticket_child, night_ticket_child_hr: @place.night_ticket_child_hr, night_ticket_teen: @place.night_ticket_teen, night_ticket_teen_hr: @place.night_ticket_teen_hr, note: @place.note, open_hr: @place.open_hr, open_lift_time: @place.open_lift_time, open_lifts: @place.open_lifts, park_bench_picnic_table: @place.park_bench_picnic_table, place_id: @place.place_id, quater_pipe: @place.quater_pipe, rail: @place.rail, rainbow: @place.rainbow, rate: @place.rate, rental_gear: @place.rental_gear, repaire: @place.repaire, rideable_acres: @place.rideable_acres, sell: @place.sell, snowmaking: @place.snowmaking, spine: @place.spine, step_down: @place.step_down, step_up: @place.step_up, strome_total: @place.strome_total, super_kicker: @place.super_kicker, table_top: @place.table_top, tabletop: @place.tabletop, terrain_advance: @place.terrain_advance, terrain_beginner: @place.terrain_beginner, terrain_expert: @place.terrain_expert, terrain_intermid: @place.terrain_intermid, terrain_park: @place.terrain_park, terrain_park_lv: @place.terrain_park_lv, title: @place.title, top_elevation: @place.top_elevation, trail_map: @place.trail_map, trails: @place.trails, trees: @place.trees, url: @place.url, wall_ride: @place.wall_ride, wifi: @place.wifi }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end
