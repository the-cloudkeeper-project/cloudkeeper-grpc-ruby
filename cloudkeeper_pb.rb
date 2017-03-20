# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: cloudkeeper.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "cloudkeeper_grpc.Appliance" do
    optional :identifier, :string, 1
    optional :title, :string, 2
    optional :description, :string, 3
    optional :mpuri, :string, 4
    optional :group, :string, 5
    optional :ram, :int64, 6
    optional :core, :int32, 7
    optional :version, :string, 8
    optional :architecture, :string, 9
    optional :operating_system, :string, 10
    optional :vo, :string, 11
    optional :expiration_date, :int64, 12
    optional :image_list_identifier, :string, 13
    optional :image, :message, 14, "cloudkeeper_grpc.Image"
    map :attributes, :string, :string, 15
  end
  add_message "cloudkeeper_grpc.Image" do
    optional :mode, :enum, 1, "cloudkeeper_grpc.Image.Mode"
    optional :location, :string, 2
    optional :format, :enum, 3, "cloudkeeper_grpc.Image.Format"
    optional :uri, :string, 4
    optional :checksum, :string, 5
    optional :size, :int64, 6
    optional :username, :string, 7
    optional :password, :string, 8
  end
  add_enum "cloudkeeper_grpc.Image.Mode" do
    value :LOCAL, 0
    value :REMOTE, 1
  end
  add_enum "cloudkeeper_grpc.Image.Format" do
    value :RAW, 0
    value :OVA, 1
    value :QCOW2, 2
    value :VMDK, 3
  end
  add_message "cloudkeeper_grpc.ImageListIdentifier" do
    optional :image_list_identifier, :string, 1
  end
end

module CloudkeeperGrpc
  Appliance = Google::Protobuf::DescriptorPool.generated_pool.lookup("cloudkeeper_grpc.Appliance").msgclass
  Image = Google::Protobuf::DescriptorPool.generated_pool.lookup("cloudkeeper_grpc.Image").msgclass
  Image::Mode = Google::Protobuf::DescriptorPool.generated_pool.lookup("cloudkeeper_grpc.Image.Mode").enummodule
  Image::Format = Google::Protobuf::DescriptorPool.generated_pool.lookup("cloudkeeper_grpc.Image.Format").enummodule
  ImageListIdentifier = Google::Protobuf::DescriptorPool.generated_pool.lookup("cloudkeeper_grpc.ImageListIdentifier").msgclass
end
