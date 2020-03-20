local window_1 = TableView(true, false)
DataBinding:bindListView("source", window_1)
local window_1_adapter = TableViewAdapter()
window_1_adapter:sectionCount(function()
return DataBinding:getSectionCount("source")
end)
window_1_adapter:rowCount(function(section)
return DataBinding:getRowCount("source", section)
end)
window_1_adapter:reuseId(function(section, row)
return DataBinding:getReuseId("source", section, row)
end)
window_1_adapter:heightForCellByReuseId("Cell_1", function(section, row)
return DataBinding:getHeight("source", section, row)
end)
window_1_adapter:initCellByReuseId("Cell_1", function(cell)
cell.contentView_1 = View()
                    :setGravity(Gravity.CENTER)
                    :width(MeasurementType.MATCH_PARENT)
                    :height(88)
                    :bgColor(Color(34, 66, 121, 1))
cell.contentView_1_2 = ImageView()
                      :width(60)
                      :height(60)
                      :contentMode(ContentMode.SCALE_TO_FILL)
                      :setGravity(Gravity.CENTER_VERTICAL)
                      :cornerRadius(35)
                      :marginLeft(10)
cell.contentView_1:addView(cell.contentView_1_2)
cell.contentView_1_3 = LinearLayout(LinearType.VERTICAL)
                      :width(MeasurementType.MATCH_PARENT)
                      :height(70)
                      :setGravity(MBit:bor(Gravity.CENTER_VERTICAL, Gravity.RIGHT))
                      :marginRight(8)
                      :padding(3, 8, 3, 8)
                      :marginLeft(98)
                      :bgColor(Color(255, 252, 153, 0.5))
cell.contentView_1_3_4 = View()
                        :width(MeasurementType.MATCH_PARENT)
                        :marginTop(5)
                        :bgColor(Color(94, 87, 46, 70))
cell.contentView_1_3_4_5 = Label()
                          :setGravity(Gravity.CENTER_VERTICAL)
                          :marginLeft(5)
cell.contentView_1_3_4:addView(cell.contentView_1_3_4_5)
cell.contentView_1_3_4_6 = Label()
                          :setGravity(MBit:bor(Gravity.CENTER_VERTICAL, Gravity.RIGHT))
cell.contentView_1_3_4:addView(cell.contentView_1_3_4_6)
cell.contentView_1_3:addView(cell.contentView_1_3_4)
cell.contentView_1:addView(cell.contentView_1_3)
cell.contentView:addView(cell.contentView_1)
end)
window_1_adapter:fillCellDataByReuseId("Cell_1", function(cell, section, row)
cell.contentView_1_2:setImageUrl(DataBinding:getModel("source", section, row, "iconUrl"))
cell.contentView_1_3_4_5:text(DataBinding:getModel("source", section, row, "name"))
cell.contentView_1_3_4_6:text(DataBinding:getModel("source", section, row, "title"))
DataBinding:bindCell("source", section, row, {"name", "iconUrl", "title"})
end)
window_1:adapter(window_1_adapter)
window:addView(window_1)

return {}, true