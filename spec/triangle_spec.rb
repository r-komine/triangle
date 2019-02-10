require 'spec_helper'

RSpec.describe "triangle.rb" do
  it "正三角形" do
    expect(triangle(1, 1, 1)).to eq "正三角形ですね！"
    expect(triangle(0, 0, 0)).to_not eq "正三角形ですね！"
  end
  it "二等辺三角形" do
    expect(triangle(2, 2, 1)).to eq "二等辺三角形ですね！"
    expect(triangle(2, 2, 0)).to_not eq "二等辺三角形ですね！"
  end
  it "不等辺三角形" do
    expect(triangle(2, 3, 4)).to eq "不等辺三角形ですね！"
    expect(triangle(-2, 3, 4)).to_not eq "不等辺三角形ですね！"
  end
  it "三角形ではない" do
    expect(triangle(1, 2, 3)).to eq "三角形じゃないです＞＜"
    expect(triangle(0, 0, 0)).to eq "三角形じゃないです＞＜"
    expect(triangle(2, 2, 0)).to eq "三角形じゃないです＞＜"
    expect(triangle(-2, 3, 4)).to eq "三角形じゃないです＞＜"
  end
end