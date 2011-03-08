require 'sequel'

DB = Sequel.sqlite

DB.create_table :sequel_objects do
  primary_key :id
end

DB.create_table :sequel_has_one_targets do
  primary_key :id

  Integer :active_record_object_id
  String :couch_rest_object_id
  Integer :data_mapper_object_id
  String :mongo_mapper_object_id
  String :mongoid_object_id
  Integer :sequel_object_id
end

DB.create_table :sequel_has_many_targets do
  primary_key :id

  Integer :active_record_object_id
  String :couch_rest_object_id
  Integer :data_mapper_object_id
  String :mongo_mapper_object_id
  String :mongoid_object_id
  Integer :sequel_object_id
end

DB.create_table :active_record_has_many_targets_sequel_objects do
  Integer :sequel_object_id
  Integer :active_record_has_many_target_id
end

DB.create_table :mongo_mapper_has_many_targets_sequel_objects do
  Integer :sequel_object_id
  String :mongo_mapper_has_many_target_id
end

DB.create_table :couch_rest_has_many_targets_sequel_objects do
  Integer :sequel_object_id
  String :couch_rest_has_many_target_id
end

DB.create_table :data_mapper_has_many_targets_sequel_objects do
  Integer :sequel_object_id
  Integer :data_mapper_has_many_target_id
end

DB.create_table :mongoid_has_many_targets_sequel_objects do
  Integer :sequel_object_id
  String :mongoid_has_many_target_id
end

DB.create_table :sequel_has_many_targets_sequel_objects do
  Integer :sequel_object_id
  Integer :sequel_has_many_target_id
end
